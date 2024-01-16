import 'package:flutter/material.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/ui/home/widgets/heart_rate_action.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final columnAction = HeartRateAction.values.getRange(0, 4);
    final rowAction =
        HeartRateAction.values.getRange(4, HeartRateAction.values.length);

    return AppScaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            "HEALTH CARE",
            style: AppStyle.normalText,
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ...columnAction.map((e) => Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: e.heartRateAction(context),
                )),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ...rowAction.map(
                    (e) => Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: e.heartRateAction(context),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
