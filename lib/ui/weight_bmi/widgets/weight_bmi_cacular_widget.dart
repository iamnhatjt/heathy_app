import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/weight_bmi/cu_weight_bmi/cu_weight_bmi_bloc.dart';
import 'package:heathy_app/data/enums/bmi.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';

class BMICacularWidget extends StatelessWidget {
  const BMICacularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bmi = context.watch<CuWeightBmiBloc>().bmi;
    final bmiType = BMIProtoco.convertType(bmi);
    return AppButtonInner(
        innerColors: Colors.transparent,
        padding: const EdgeInsets.all(8),
        radius: 8,
        backgroundColor: bmiType.toColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(bmi.toStringAsFixed(1),
                    style: AppStyle.normalText.copyWith(color: Colors.white)),
                const SizedBox(height: 4),
                Text(
                  bmiType.toName,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        ));
  }
}
