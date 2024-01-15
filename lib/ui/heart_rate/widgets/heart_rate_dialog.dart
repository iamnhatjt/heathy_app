import 'package:flutter/material.dart';
import 'package:heathy_app/data/enums/heart_rate.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:heathy_app/data/model/heart_rate_model.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/app_dialog.dart';
import 'package:heathy_app/res/widgets/dialog_info.dart';
import 'package:heathy_app/ui/heart_rate/widgets/heart_rate_info.dart';

AppDialog hearRateDialog(
    {HeartRateModel? heartRateModel, required BuildContext context}) {
  late int heartRate = heartRateModel?.heartRate ?? 70;

  void onChange(int value) {
    heartRate = value;
  }

  return AppDialog(
      initAge: heartRateModel?.age,
      initDate: heartRateModel?.dateTime,
      sex: getSex(heartRateModel?.sex),
      child: _HeartRateDialogComponent(
        initHeartRate: heartRate,
        onChange: onChange,
      ));
}

class _HeartRateDialogComponent extends StatefulWidget {
  const _HeartRateDialogComponent({
    required this.initHeartRate,
    required this.onChange,
  });
  final int initHeartRate;
  final Function(int value) onChange;

  @override
  State<_HeartRateDialogComponent> createState() =>
      _HeartRateDialogComponentState();
}

class _HeartRateDialogComponentState extends State<_HeartRateDialogComponent> {
  late int heartRate = widget.initHeartRate;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    widget.onChange(heartRate);
  }

  void incrementHeartRate() {
    setState(() {
      heartRate++;
    });
  }

  void decrementHeartRate() {
    if (heartRate <= 10) {
      return;
    }
    setState(() {
      heartRate--;
    });
  }

  void openDialogInfo() {
    final dialog = DialogInfo('Heart Rate', const HeartRateInfo(), context);
    dialog.show();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        handleHeartRate(),
        const SizedBox(height: 30),
        heartRateType(),
        const SizedBox(height: 30),
        heartRateRest()
      ],
    );
  }

  Column heartRateRest() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BaseRoundedButton.all(
            onTap: openDialogInfo,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  heartRate.convertHeart.heartRateRest,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Icon(Icons.info_outline),
              ],
            )),
        const SizedBox(height: 16),
        Text(
          heartRate.convertHeart.heartRateRecomment,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Row heartRateType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.heart_broken,
          color: heartRate.convertHeart.color,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          heartRate.convertHeart.type,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  AppButtonInner handleHeartRate() {
    return AppButtonInner(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      radius: 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AppButtonInner(
                padding: const EdgeInsets.all(4),
                radius: 8,
                onTap: incrementHeartRate,
                child: const Icon(
                  Icons.arrow_drop_up_rounded,
                  color: Colors.lightBlueAccent,
                  size: 28,
                ),
              ),
              const SizedBox(height: 8),
              AppButtonInner(
                padding: const EdgeInsets.all(4),
                radius: 8,
                onTap: decrementHeartRate,
                child: const Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.lightBlueAccent,
                  size: 28,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$heartRate',
                style: TextStyle(
                    color: heartRate.colorHeartRate,
                    fontSize: 50,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "BPM",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
