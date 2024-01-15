import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/config/router.dart';
import 'package:heathy_app/res/util/navigation_service.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: const Text("Home page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BaseRoundedButton.all(
              onTap: () {
                currentContext.go(RouterUri.heartRate);
              },
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
            ),
          ],
        ),
      ),
    );
  }
}
