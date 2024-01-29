import 'package:flutter/material.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';
import 'package:heathy_app/res/widgets/base_body_feature.dart';

class BloodSugarScreen extends StatelessWidget {
  const BloodSugarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: BaseAppBar(
        title: "Blood sugar",
      ),
      body: BaseBody(
        onChangeDateRange: (value) {},
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: const Text(''),
      ),
    );
  }
}
