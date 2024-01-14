import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_dialog.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      AppDialog(
        child: const Text("hello world"),
        confirm: (date, age, sex) {
          log('$date $age $sex');
        },
      ).show();
    }

    return AppScaffold(
      appBar: AppBar(title: const Text("Home page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BaseRoundedButton.all(
              onTap: onTap,
              child: const Text("heart rate"),
            ),
            BaseRoundedButton.all(
              child: const Text("heart rate"),
            ),
            BaseRoundedButton.all(
              child: const Text("heart rate"),
            ),
            BaseRoundedButton.all(
              child: const Text("heart rate"),
            )
          ],
        ),
      ),
    );
  }
}
