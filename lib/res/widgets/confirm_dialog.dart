import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/navigation_service.dart';
import 'package:heathy_app/res/widgets/app_button.dart';

class ConfirmDialog {
  final String? title;
  final VoidCallback? onConfirm;
  final String? description;

  ConfirmDialog({
    this.title,
    this.onConfirm,
    this.description,
  });

  final context = currentContext;

  void show() {
    void ontap() {
      if (onConfirm != null) {
        onConfirm!();
      }
      context.pop();
    }

    showDialog(
        useRootNavigator: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
                child: Text(title.toString(), style: AppStyle.buttonLarge)),
            content: Text(
              description.toString(),
              style: AppStyle.normalText,
            ),
            actions: [
              BaseRoundedButton.all(
                onTap: context.pop,
                backgroundColor: Colors.white,
                child: const Text(
                  "Cancel",
                  style: AppStyle.normalText,
                ),
              ),
              BaseRoundedButton.all(
                onTap: ontap,
                backgroundColor: Colors.redAccent,
                child: Text(
                  "Confirm",
                  style: AppStyle.normalText.copyWith(color: Colors.white),
                ),
              ),
            ],
          );
        });
  }
}
