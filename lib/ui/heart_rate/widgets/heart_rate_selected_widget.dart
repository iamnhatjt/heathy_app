import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/heart_rate/heart_rate_bloc.dart';
import 'package:heathy_app/data/enums/heart_rate.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/extensions/datetime_extension.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/confirm_dialog.dart';

class HeartRateSeletectedWidget extends StatelessWidget {
  const HeartRateSeletectedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final heartRateSelected = context.watch<HeartRateBloc>().heartRateSelected;

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
