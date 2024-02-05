import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/blood_sugar/blood_sugar_bloc.dart';
import 'package:heathy_app/data/enums/blood_sugar.dart';
import 'package:heathy_app/gen/assets.gen.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/extensions/datetime_extension.dart';
import 'package:heathy_app/res/util/extensions/snack_bar_extention.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';
import 'package:heathy_app/res/widgets/base_body_feature.dart';
import 'package:heathy_app/res/widgets/confirm_dialog.dart';
import 'package:heathy_app/ui/blood_sugar/widgets/blood_chart_widget.dart';
import 'package:heathy_app/ui/blood_sugar/widgets/blood_sugar_dialog.dart';
import 'package:heathy_app/ui/blood_sugar/widgets/pick_type_widget.dart';
import 'package:lottie/lottie.dart';

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
          child: BlocBuilder<BloodSugarBloc, BloodSugarState>(
            builder: (context, state) {
              return state.maybeWhen(
                  loading: () => const CircularProgressIndicator(),
                  empty: () => LottieBuilder.asset(Assets.jsons.bloodSuggar),
                  orElse: () {
                    return Column(
                      children: [
                        const SizedBox(height: 8),
                        totalInfor(context),
                        const SizedBox(height: 8),
                        const PickTypeWidget(),
                        const SizedBox(height: 20),
                        const BloodChart(),
                        const SizedBox(height: 8),
                        const DetailBloodSugar(),
                        const SizedBox(height: 16),
                      ],
                    );
                  });
            },
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

class DetailBloodSugar extends StatelessWidget {
  const DetailBloodSugar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloodSugar = context.watch<BloodSugarBloc>().bloodSugarSelected;
    void onDelete() {
      ConfirmDialog(
        title: "Delete blood sugar",
        description: "No way to get back this blood sugar infor",
        onConfirm: () {
          context.read<BloodSugarBloc>().add(const BloodSugarEvent.delete());
        },
      ).show();
    }

    return AppButtonInner(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                    "${bloodSugar.dateTime.defaultFormat()} \n${bloodSugar.dateTime.hourFormat()}")
              ],
            ),
            Column(
              children: [
                Text(
                  bloodSugar.bloodSugar.toString(),
                  style: AppStyle.normalText,
                ),
                const Text(
                  'mg/dl',
                  style: AppStyle.normalText,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.heart_broken,
                  color: convertTypeMg(bloodSugar.bloodSugar!).getColor,
                ),
                Text(convertTypeMg(bloodSugar.bloodSugar!).toText),
                IconButton(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 0,
                  ),
                  onPressed: onDelete,
                  icon: const Icon(Icons.delete),
                  color: Colors.redAccent,
                )
              ],
            ),
          ],
        ));
  }
}
