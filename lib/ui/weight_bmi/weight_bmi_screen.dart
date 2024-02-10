import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/weight_bmi/cu_weight_bmi/cu_weight_bmi_bloc.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/extensions/snack_bar_extention.dart';
import 'package:heathy_app/res/util/navigation_service.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';
import 'package:heathy_app/res/widgets/base_body_feature.dart';
import 'package:heathy_app/ui/weight_bmi/widgets/weight_bmi_chart.dart';
import 'package:heathy_app/ui/weight_bmi/widgets/weight_bmi_dialog.dart';

class WeightBMIScreen extends StatelessWidget {
  const WeightBMIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: BaseAppBar(title: "Weight & BMI"),
      body: const _WeightBMI(),
    );
  }
}

class _WeightBMI extends StatelessWidget {
  const _WeightBMI();

  @override
  Widget build(BuildContext context) {
    void onTapAdd() {
      weightBMIDialog(
        context: context,
      ).show();
    }

    return BaseBody(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 20,
      ),
      onChangeDateRange: (value) {},
      onTapAdd: onTapAdd,
      child: BlocListener<CuWeightBmiBloc, CuWeightBmiState>(
        listener: (context, state) {
          state.whenOrNull(
            deleted: () =>
                currentContext.showSuccessSnackBar(message: 'Delete success'),
            updated: () =>
                currentContext.showSuccessSnackBar(message: 'Updated success'),
            added: () =>
                currentContext.showSuccessSnackBar(message: 'Added success'),
            //TODO: Add Error
          );
        },
        child: Column(children: [
          const SizedBox(height: 8),
          average,
          const WeightBMIChart(),
        ]),
      ),
    );
  }

  Widget get average => Builder(
        builder: (context) {
          return const AppButtonInner(
              padding: EdgeInsets.symmetric(vertical: 12),
              innerColors: Colors.lightGreen,
              radius: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Min",
                        style: AppStyle.normalText,
                      ),
                      // Text(context.watch<WeightBmiBloc>().min.toString()),
                      Text('value') //TODO: replace
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Average",
                        style: AppStyle.normalText,
                      ),
                      // Text(context.watch<WeightBmiBloc>().average.toString()),
                      Text('value')
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Max",
                        style: AppStyle.normalText,
                      ),
                      // Text(context.watch<WeightBmiBloc>().max.toString()),
                      Text('value')
                    ],
                  ),
                ],
              ));
        },
      );
}
