import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/res/styles/Colors.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/navigation_service.dart';
import 'package:heathy_app/res/widgets/app_button.dart';

class BaseDialog {
  final Widget? title;

  BaseDialog({this.title});

  late Widget _body = const Text("implment this");

  void body(Widget child) {
    _body = child;
  }

  void confirmAction(BuildContext context) {}

  void show() {
    showDialog(
      barrierDismissible: false,
      context: currentContext,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                title ?? const SizedBox.shrink(),
                _body,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BaseRoundedButton.all(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 30),
                      radius: 30,
                      backgroundColor: AppColors.red,
                      onTap: context.pop,
                      child: Text(
                        "Đóng",
                        style: AppStyle.buttonLarge
                            .copyWith(color: AppColors.white),
                      ),
                    ),
                    BaseRoundedButton.all(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 30),
                        radius: 30,
                        backgroundColor: AppColors.blue,
                        onTap: () => confirmAction(context),
                        child: Center(
                          child: Text(
                            'Lưu',
                            style: AppStyle.buttonLarge
                                .copyWith(color: AppColors.white),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
