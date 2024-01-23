import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

extension ExtensionOnContext on BuildContext {
  void showSuccessSnackBar({required String message, int? milisecond}) {
    MotionToast(
      borderRadius: 10,
      primaryColor: Colors.lightGreenAccent,
      position: MotionToastPosition.top,
      description: Text(message),
      height: 60,
      width: size!.width * 0.97,
      layoutOrientation: ToastOrientation.ltr,
      animationType: AnimationType.fromLeft,
      dismissable: true,
    ).show(this);
    // toast.show(this);
    // Future.delayed(const Duration(milliseconds: 4))
    // .then((_) => toast.dismiss());
  }
}
