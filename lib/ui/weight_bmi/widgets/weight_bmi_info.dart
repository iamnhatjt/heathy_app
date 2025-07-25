import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/weight_bmi/cu_weight_bmi/cu_weight_bmi_bloc.dart';
import 'package:heathy_app/data/enums/bmi.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/dialog_info.dart';

class WeightBmiInfo extends StatelessWidget {
  const WeightBmiInfo({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      DialogInfo('BMI', infoBMI(), context).show();
    }

    final bmi = context.watch<CuWeightBmiBloc>().bmi;
    final bmiType = BMIProtoco.convertType(bmi);

    return BaseRoundedButton.all(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      onTap: onTap,
      child: Row(children: [
        Expanded(child: Center(child: Text(bmiType.bmiInfo))),
        const Icon(Icons.info_outline),
      ]),
    );
  }

  Widget infoBMI() {
    Widget each(BmiTypeEnum value) {
      return AppButtonInner(
        backgroundColor: value.toColor,
        innerColors: Colors.transparent,
        radius: 8,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(value.toName, style: AppStyle.normalText),
            const SizedBox(height: 8),
            Text(value.bmiInfo),
          ],
        ),
      );
    }

    return Expanded(
      child: SingleChildScrollView(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => each(BmiTypeEnum.values[index]),
          itemCount: BmiTypeEnum.values.length,
        ),
      ),
    );
  }
}
