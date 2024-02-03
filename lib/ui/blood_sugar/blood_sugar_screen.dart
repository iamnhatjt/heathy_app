import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/blood_sugar/blood_sugar_bloc.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/extensions/snack_bar_extention.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';
import 'package:heathy_app/res/widgets/base_body_feature.dart';
import 'package:heathy_app/ui/blood_sugar/widgets/blood_sugar_dialog.dart';
import 'package:heathy_app/ui/blood_sugar/widgets/pick_type_widget.dart';

class BloodSugarScreen extends StatelessWidget {
  const BloodSugarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onAddData() {
      bloodSugarDialog(context: context).show();
    }

    return AppScaffold(
      appBar: BaseAppBar(
        title: "Blood sugar",
      ),
      body: BlocListener<BloodSugarBloc, BloodSugarState>(
        listener: (context, state) {
          state.whenOrNull(
            addSuccess: () =>
                context.showSuccessSnackBar(message: "Add success"),
            changeSuccess: () =>
                context.showSuccessSnackBar(message: "Change success"),
            deleteSuccess: () =>
                context.showSuccessSnackBar(message: "Delete success"),
            error: (message) => context.showSuccessSnackBar(message: message),
          );
        },
        child: BaseBody(
          onTapAdd: onAddData,
          onChangeDateRange: (value) {
            context.read<BloodSugarBloc>().add(BloodSugarEvent.started(value));
          },
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [totalInfor(context), const PickTypeWidget()],
          ),
        ),
      ),
    );
  }

  AppButtonInner totalInfor(BuildContext context) {
    return AppButtonInner(
        padding: const EdgeInsets.symmetric(vertical: 12),
        innerColors: Colors.lightGreen,
        radius: 12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text(
                  "Min",
                  style: AppStyle.normalText,
                ),
                Text(context.watch<BloodSugarBloc>().min.toString()),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Average",
                  style: AppStyle.normalText,
                ),
                Text(context.watch<BloodSugarBloc>().average.toString()),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Max",
                  style: AppStyle.normalText,
                ),
                Text(context.watch<BloodSugarBloc>().max.toString()),
              ],
            ),
          ],
        ));
  }
}
