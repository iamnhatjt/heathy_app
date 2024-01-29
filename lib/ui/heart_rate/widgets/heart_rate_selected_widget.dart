import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/bloc/heart_rate/heart_rate_bloc.dart';
import 'package:heathy_app/data/enums/heart_rate.dart';
import 'package:heathy_app/data/model/heart_rate_model.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/extensions/datetime_extension.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/confirm_dialog.dart';
import 'package:heathy_app/ui/heart_rate/widgets/heart_rate_dialog.dart';

class HeartRateSeletectedWidget extends StatelessWidget {
  const HeartRateSeletectedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final heartRateSelected = context.watch<HeartRateBloc>().heartRateSelected;

    void onTapUpdate() {
      log("running updated");

      hearRateDialog(
              context: context,
              onTapConfirm: (date, age, sex, heartRate) {
                final HeartRateModel newHeartRate = HeartRateModel(
                  dateTime: date,
                  sex: sex.toString(),
                  age: age,
                  heartRate: heartRate,
                );
                context
                    .read<HeartRateBloc>()
                    .add(HeartRateEvent.update(newHeartRate));
                context.pop();
              },
              heartRateModel: heartRateSelected)
          .show();
    }

    void onTapDelete() {
      ConfirmDialog(
        title: "Are you sure to delete?",
        description: "No way to get this heart rate back...",
        onConfirm: () => context
            .read<HeartRateBloc>()
            .add(HeartRateEvent.delete(heartRateSelected.id!)),
      ).show();
    }

    return AppButtonInner(
        onTap: onTapUpdate,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heartRateSelected.dateTime.defaultFormat()),
                const SizedBox(height: 8),
                Text(heartRateSelected.dateTime.hourFormat()),
              ],
            ),
            Column(
              children: [
                Text(
                  heartRateSelected.heartRate.toString(),
                  style: AppStyle.buttonLarge,
                ),
                const Text('BPM')
              ],
            ),
            Row(
              children: [
                Icon(Icons.heart_broken,
                    color: heartRateSelected.heartRate!.convertHeart.color),
                Text(heartRateSelected.heartRate!.convertHeart.type),
                const SizedBox(width: 30),
                GestureDetector(
                    onTap: onTapDelete,
                    child: const Icon(Icons.delete, color: Colors.red)),
              ],
            ),
          ],
        ));
  }
}
