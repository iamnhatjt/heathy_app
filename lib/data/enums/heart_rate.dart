import 'package:flutter/material.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';

enum HeartRateEnum {
  fast,
  normal,
  slow,
}

extension ExtensionHeartRate on HeartRateEnum {
  Color get color {
    switch (this) {
      case HeartRateEnum.normal:
        return Colors.green;
      case HeartRateEnum.slow:
        return Colors.purpleAccent;
      case HeartRateEnum.fast:
        return Colors.redAccent;
    }
  }

  String get type {
    final String text = name;
    return "${text[0].toUpperCase()}${text.substring(1)}";
  }

  String get heartRateRest {
    const text = "Resting Heart Rate";
    switch (this) {
      case HeartRateEnum.fast:
        return "$text >100";

      case HeartRateEnum.normal:
        return '$text 60 - 100';
      case HeartRateEnum.slow:
        return '$text  < 60';
    }
  }

  String get heartRateRecomment {
    switch (this) {
      case HeartRateEnum.fast:
        return "Cautious! Yours heart rate is \nhighter than normal";

      case HeartRateEnum.normal:
        return "Great! Yours heart rate remains\n in the normal range";
      case HeartRateEnum.slow:
        return 'Cautious! Yours heart rate is\n too low';
    }
  }

  Widget get heartRateWidgetComponentInfo {
    final String value = switch (this) {
      HeartRateEnum.fast => '> 100',
      HeartRateEnum.normal => '> 60',
      HeartRateEnum.slow => '< 60',
    };

    Widget component = AppButtonInner(
        radius: 8,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        innerColors: color,
        child: Row(
          children: [
            Icon(
              Icons.heart_broken,
              color: color,
            ),
            Text(type, style: AppStyle.buttonLarge.copyWith(color: color)),
            const Spacer(),
            Text(
              'Heart Rate $value',
              style: AppStyle.normalText.copyWith(color: color),
            ),
          ],
        ));

    return component;
  }
}

extension ExtensionHeartRateConvert on int {
  HeartRateEnum get convertHeart {
    switch (this) {
      case < 60:
        return HeartRateEnum.slow;
      case < 100:
        return HeartRateEnum.normal;
      default:
        return HeartRateEnum.fast;
    }
  }

  Color get colorHeartRate {
    return convertHeart.color;
  }
}
