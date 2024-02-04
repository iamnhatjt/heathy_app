import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/config/router.dart';
import 'package:heathy_app/gen/assets.gen.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:lottie/lottie.dart';

enum HeartRateAction {
  heartRate,
  weightBMI,
  bloodSugar,
  bloodPressure,
  foodScanner,
  insight,
  alarm,
}

extension HeartRateActionWidget on HeartRateAction {
  String get type {
    switch (this) {
      case HeartRateAction.heartRate:
        return "Heart Rate";
      case HeartRateAction.weightBMI:
        return "Weight BMI";
      case HeartRateAction.bloodSugar:
        return "Blood Sugar";
      case HeartRateAction.bloodPressure:
        return "Blood Pressure";
      case HeartRateAction.foodScanner:
        return "Food\nScanner";
      case HeartRateAction.insight:
        return "Insights";
      case HeartRateAction.alarm:
        return "Alarm";
    }
  }

  String get pathAnimation {
    switch (this) {
      case HeartRateAction.heartRate:
        return Assets.jsons.heartRateAnimation;
      case HeartRateAction.weightBMI:
        return Assets.jsons.weightBmi;
      case HeartRateAction.bloodSugar:
        return Assets.jsons.bloodSuggar;
      case HeartRateAction.bloodPressure:
        return Assets.jsons.bloodPressure;
      case HeartRateAction.foodScanner:
        return Assets.jsons.qrScanner;
      case HeartRateAction.insight:
        return Assets.images.insight.path;
      case HeartRateAction.alarm:
        return Assets.jsons.alarm;
    }
  }

  Gradient get color {
    switch (this) {
      case HeartRateAction.heartRate:
        return LinearGradient(colors: [
          const Color.fromARGB(255, 255, 26, 10),
          Colors.red.withOpacity(0.5)
        ]);
      case HeartRateAction.weightBMI:
        return LinearGradient(colors: [
          const Color.fromARGB(255, 49, 243, 55),
          Colors.green.withOpacity(0.5)
        ]);
      case HeartRateAction.bloodSugar:
        return LinearGradient(colors: [
          const Color.fromARGB(255, 218, 5, 255),
          Colors.purple.withOpacity(0.5)
        ]);
      case HeartRateAction.bloodPressure:
        return LinearGradient(colors: [
          const Color.fromARGB(255, 17, 148, 255),
          Colors.blue.withOpacity(0.5)
        ]);
      default:
        return LinearGradient(
            colors: [Colors.amber.shade200, Colors.amber.withOpacity(0.4)]);
    }
  }

  String get movePath {
    switch (this) {
      case HeartRateAction.heartRate:
        return RouterUri.heartRate;
      case HeartRateAction.weightBMI:
        return RouterUri.weightBMI;
      case HeartRateAction.bloodSugar:
        return RouterUri.bloodSugar;
      case HeartRateAction.bloodPressure:
        return RouterUri.bloodPressure;
      case HeartRateAction.foodScanner:
        return RouterUri.foodScanner;
      case HeartRateAction.insight:
        return RouterUri.insights;
      case HeartRateAction.alarm:
        return RouterUri.alarm;
    }
  }

  Widget heartRateAction(BuildContext context) {
    final smallActon =
        HeartRateAction.values.getRange(4, HeartRateAction.values.length);

    Widget iconAnimation = Lottie.asset(pathAnimation);
    if (this == HeartRateAction.insight) {
      iconAnimation = Image.asset(pathAnimation);
    }

    void ontap() {
      context.push(movePath);
    }

    if (smallActon.contains(this)) {
      return BaseRoundedButton.all(
          onTap: ontap,
          gradient: color,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 60, child: iconAnimation),
              Expanded(
                child: Center(
                  child: Text(
                    type,
                    style: AppStyle.normalText.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ));
    }

    if (this == HeartRateAction.heartRate) {
      return BaseRoundedButton.all(
          onTap: ontap,
          gradient: color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 100, child: iconAnimation),
                  Text(
                    type,
                    style: AppStyle.normalText.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ],
          ));
    }
    return BaseRoundedButton.all(
        onTap: ontap,
        gradient: color,
        child: Row(
          children: [
            SizedBox(height: 70, child: iconAnimation),
            Expanded(
              child: Center(
                child: Text(
                  type,
                  style: AppStyle.normalText.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
