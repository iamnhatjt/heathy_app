import 'package:flutter/material.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:heathy_app/res/widgets/app_dialog.dart';

AppDialog weightBMIDialog({
  Function(DateTime, int, SexEnum)? confirm,
}) {
  return AppDialog(
    confirm: confirm,
    child: const Text("Hello"),
  );
}
