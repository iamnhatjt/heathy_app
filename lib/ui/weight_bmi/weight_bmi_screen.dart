import 'package:flutter/material.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';
import 'package:heathy_app/res/widgets/base_body_feature.dart';
import 'package:heathy_app/ui/weight_bmi/widgets/weight_bmi_dialog.dart';

class WeightBMIScreen extends StatelessWidget {
  const WeightBMIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: BaseAppBar(title: "Weight & BMI"),
      body: const _WeightBMI(),
    );
  }
}

class _WeightBMI extends StatelessWidget {
  const _WeightBMI();

  @override
  Widget build(BuildContext context) {
    void onTapAdd() {
      weightBMIDialog().show();
    }

    return BaseBody(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 20,
      ),
      onChangeDateRange: (value) {},
      onTapAdd: onTapAdd,
      child: const Column(children: []),
    );
  }
}
