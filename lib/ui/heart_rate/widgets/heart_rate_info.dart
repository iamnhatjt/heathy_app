import 'package:flutter/material.dart';
import 'package:heathy_app/data/enums/heart_rate.dart';

final class HeartRateInfo extends StatelessWidget {
  const HeartRateInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: HeartRateEnum.values
          .map((e) => e.heartRateWidgetComponentInfo)
          .toList(),
    );
  }
}
