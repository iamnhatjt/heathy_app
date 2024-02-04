import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/bloc/heart_rate/heart_rate_bloc.dart';
import 'package:heathy_app/config/router.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:heathy_app/data/model/heart_rate_model.dart';
import 'package:heathy_app/gen/assets.gen.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/extensions/snack_bar_extention.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';
import 'package:heathy_app/ui/heart_rate/widgets/heart_rate_chart.dart';
import 'package:heathy_app/ui/heart_rate/widgets/heart_rate_selected_widget.dart';
import 'package:lottie/lottie.dart';

import '../../res/widgets/base_body_feature.dart';
import 'widgets/heart_rate_dialog.dart';

class HeartRateScreen extends StatelessWidget {
  const HeartRateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appBar: BaseAppBar(
          title: 'Heart Rate',
        ),
        body: const _HeartRateScreen());
  }
}

class _HeartRateScreen extends StatelessWidget {
  const _HeartRateScreen();

  @override
  Widget build(BuildContext context) {
    return BlocListener<HeartRateBloc, HeartRateState>(
        listener: (context, state) {
          state.whenOrNull(
            added: () =>
                context.showSuccessSnackBar(message: "Added heart rate"),
            deleted: () =>
                context.showSuccessSnackBar(message: "Deleted heart rate"),
            filtered: () =>
                context.showSuccessSnackBar(message: "Filtered heart rate"),
            error: (e) => context.showSuccessSnackBar(message: e),
            updated: () =>
                context.showSuccessSnackBar(message: "Updated heart rate"),
          );
        },
        child: const _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final HeartRateBloc heartRateBloc = context.read<HeartRateBloc>();

    void onTapConfirm(DateTime date, int age, SexEnum sex, int value) {
      final HeartRateModel newHeartRate = HeartRateModel(
        age: age,
        dateTime: date,
        heartRate: value,
        sex: sex.toString(),
      );
      heartRateBloc.add(HeartRateEvent.addHeartRate(newHeartRate));
      context.pop();
    }

    return BaseBody(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      onTapAdd: () {
        hearRateDialog(context: context, onTapConfirm: onTapConfirm).show();
      },
      onChangeDateRange: (value) {
        heartRateBloc.add(HeartRateEvent.filterDate(dateRange: value));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<HeartRateBloc, HeartRateState>(
            builder: (context, state) {
              log(state.toString());
              return state.maybeWhen(
                loading: () => const CircularProgressIndicator(),
                empty: () => emtyWidget(),
                orElse: () => showHeartRate(context),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          measureButton(context),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Expanded emtyWidget() =>
      Expanded(child: Lottie.asset(Assets.jsons.heartRateAnimation));

  Widget showHeartRate(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          heartRateAverage(context),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: HeartRateChartDialog(
                listHeartRate: context.watch<HeartRateBloc>().listHeartRate,
              ),
            ),
          ),
          const HeartRateSeletectedWidget()
        ],
      ),
    );
  }

  BaseRoundedButton measureButton(BuildContext context) {
    return BaseRoundedButton.all(
        onTap: () async {
          final int value =
              await context.push(RouterUri.measureHeartRate) as int;
          if (context.mounted) {
            await hearRateDialog(
                    context: context,
                    onTapConfirm: (date, age, sex, heartRate) {
                      final currentHeartRate = HeartRateModel(
                          heartRate: heartRate,
                          age: age,
                          sex: sex.toString(),
                          dateTime: date);
                      HeartRateBloc()
                          .add(HeartRateEvent.addHeartRate(currentHeartRate));
                      context.pop();
                    },
                    heartRateModel: HeartRateModel(heartRate: value))
                .show()
                .then((_) => context
                    .read<HeartRateBloc>()
                    .add(const HeartRateEvent.filterDate()));
          }
        },
        gradient: const LinearGradient(colors: [
          Colors.greenAccent,
          Colors.green,
        ]),
        backgroundColor: Colors.greenAccent,
        radius: 20,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Row(
          children: [
            Lottie.asset(Assets.jsons.heartRateAnimation, height: 40),
            const Spacer(),
            Text(
              "Measure now",
              style: AppStyle.buttonLarge.copyWith(color: Colors.white),
            ),
            const Spacer(),
          ],
        ));
  }

  AppButtonInner heartRateAverage(BuildContext context) {
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
                Text(context.watch<HeartRateBloc>().minHeartRate.toString()),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Average",
                  style: AppStyle.normalText,
                ),
                Text(context.watch<HeartRateBloc>().average.toString()),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Max",
                  style: AppStyle.normalText,
                ),
                Text(context.watch<HeartRateBloc>().maxHeartRate.toString()),
              ],
            ),
          ],
        ));
  }
}
