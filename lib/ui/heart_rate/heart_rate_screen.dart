import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';

class HeartRateScreen extends StatelessWidget {
  const HeartRateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text("heart rate screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BaseRoundedButton.all(child: Text("add")),
            BaseRoundedButton.all(child: Text("change")),
          ],
        ),
      ),
    );
  }
}
