import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/bloc/heart_rate_bloc.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:heathy_app/data/model/heart_rate_model.dart';
import 'package:heathy_app/gen/assets.gen.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/extensions/snack_bar_extention.dart';
import 'package:heathy_app/res/util/navigation_service.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';
import 'package:heathy_app/ui/heart_rate/widgets/heart_rate_chart.dart';
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
          state.when(
            initial: () {},
            loading: () {},
            loaded: (message, value) {
              currentContext.showSuccessSnackBar(message: message);
            },
            error: (message) {
              currentContext.showSuccessSnackBar(message: message);
            },
          );
        },
        child: const _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HeartRateBloc, HeartRateState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (message, listHeartRates) =>
              loadedState(context, listHeartRates),
          orElse: () => const SizedBox.shrink(),
          loading: () => const CircularProgressIndicator(),
        );
      },
    );
  }

  BaseBody loadedState(
      BuildContext context, List<HeartRateModel> listHeartRates) {
    void onTapConfirm(DateTime date, int age, SexEnum sex, int value) {
      final HeartRateModel newHeartRate = HeartRateModel(
        age: age,
        dateTime: date,
        heartRate: value,
        sex: sex.toString(),
      );
      context
          .read<HeartRateBloc>()
          .add(HeartRateEvent.addHeartRate(newHeartRate));
      context.pop();
    }

    return BaseBody(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      onTapAdd: () {
        hearRateDialog(context: context, onTapConfirm: onTapConfirm).show();
      },
      onChangeDateRange: (value) {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          AppButtonInner(
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
                      Text(context
                          .watch<HeartRateBloc>()
                          .minHeartRate
                          .toString()),
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
                      Text(context
                          .watch<HeartRateBloc>()
                          .maxHeartRate
                          .toString()),
                    ],
                  ),
                ],
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: HeartRateChartDialog(
                listHeartRate: listHeartRates,
              ),
            ),
          ),
          BaseRoundedButton.all(
              onTap: () => context.showSuccessSnackBar(message: 'Helll world'),
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
              )),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
