import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/res/styles/styles.dart';

// ignore: must_be_immutable
class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  BaseAppBar({
    super.key,
    this.centerTitle = true,
    this.title,
    this.isDisplayBack = true,
    this.onBack,
  });
  final bool? centerTitle;
  String? title;
  bool? isDisplayBack;
  VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: centerTitle,
      title: Text(
        title ?? '',
        style:
            AppStyle.normalText.copyWith(color: Colors.black87, fontSize: 20),
      ),
      leading: Visibility(
        visible: isDisplayBack ?? true,
        child: GestureDetector(
          onTap: onBack ?? context.pop,
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
