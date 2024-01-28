import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/bloc/measure_heart_rate/measure_heart_rate_bloc.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';
import 'package:heathy_app/res/widgets/heart_bpm.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MeasureHeartRateScreen extends StatelessWidget {
  const MeasureHeartRateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTime = DateTime.now();
    return AppScaffold(
      appBar: BaseAppBar(
        title: "Heart rate",
        centerTitle: true,
      ),
      body: Column(
        children: [
          const CircleProcessing(),
          HeartBPMDialog(
            context: context,
            alpha: 0.5,
            onBPM: (value) => context
                .read<MeasureHeartRateBloc>()
                .add(MeasureHeartRateEvent.onBpm(value)),
            onRawData: (value) => context
                .read<MeasureHeartRateBloc>()
                .add(MeasureHeartRateEvent.onRawData(value)),
            child: const Text("haha 123"),
          ),
          const Spacer(),
          handleButton(context),
        ],
      ),
    );
  }

  Widget handleButton(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Place your finger on camera",
          style: AppStyle.normalText,
        ),
        BaseRoundedButton.all(
            radius: 20,
            onTap: () {
              context
                  .read<MeasureHeartRateBloc>()
                  .add(const MeasureHeartRateEvent.onStop());
              context.pop();
            },
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            backgroundColor: Colors.redAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Stop",
                  style: AppStyle.buttonLarge.copyWith(color: Colors.white),
                ),
              ],
            )),
      ],
    );
  }
}

class CircleProcessing extends StatelessWidget {
  const CircleProcessing({super.key});

  @override
  Widget build(BuildContext context) {
    double progress = context.watch<MeasureHeartRateBloc>().progress;
    final sizeWidth = MediaQuery.of(context).size.width / 3;
    return BlocBuilder<MeasureHeartRateBloc, MeasureHeartRateState>(
      builder: (context, state) {
        state.maybeWhen(
          orElse: () {},
          measuring: (value) {
            // progress = value;
            log(progress.toString());
          },
        );

        return CircularPercentIndicator(
          animation: true,
          animationDuration: 200,
          radius: sizeWidth,
          lineWidth: 10.0,
          percent: progress < 0.0
              ? 0.0
              : progress > 1.0
                  ? 1.0
                  : progress,
          circularStrokeCap: CircularStrokeCap.round,
          animateFromLastPercent: true,
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(17.0, 0, 17.0, 0),
                child: Text(progress.toString()),
              ),
            ],
          ),
          backgroundColor: Colors.grey,
          progressColor: Colors.redAccent,
        );
      },
    );
  }
}
