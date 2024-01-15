import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button.dart';

class DialogInfo {
  String? title;
  Widget? child;
  BuildContext buildContext;

  DialogInfo(this.title, this.child, this.buildContext);

  late Widget titleWidget = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        title ?? '',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );

  late Widget buttonAction = BaseRoundedButton.all(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      backgroundColor: Colors.blueAccent,
      onTap: buildContext.pop,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'OK',
            style: AppStyle.buttonLarge.copyWith(color: Colors.white),
          ),
        ],
      ));

  Future show() {
    return showDialog(
      barrierDismissible: false,
      context: buildContext,
      builder: (context) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 12,
            ),
            titleWidget,
            const SizedBox(
              height: 32,
            ),
            child ?? const SizedBox.shrink(),
            const SizedBox(height: 30),
            buttonAction,
          ],
        ),
      ),
    );
  }
}
