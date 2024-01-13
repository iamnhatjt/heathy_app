import 'package:flutter/material.dart';

class _BaseRoundeButton extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const _BaseRoundeButton({
    required this.child,
    super.key,
    this.padding,
    this.margin,
    this.borderRadius,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
        ),
        child: child,
      ),
    );
  }
}

class BaseRoundedButton extends _BaseRoundeButton {
  const BaseRoundedButton({
    super.key,
    required super.child,
    super.padding,
    super.backgroundColor,
    super.borderRadius,
    super.margin,
    super.onTap,
  });

  factory BaseRoundedButton.all(
      {required Widget child,
      EdgeInsetsGeometry? padding,
      EdgeInsetsGeometry? margin,
      BorderRadiusGeometry? borderRadius,
      Color? backgroundColor,
      double? radius,
      VoidCallback? onTap}) {
    return BaseRoundedButton(
      padding: padding ?? const EdgeInsets.all(12.0),
      backgroundColor: backgroundColor ?? Colors.white,
      borderRadius: BorderRadius.circular(radius ?? 16.0),
      margin: margin,
      onTap: onTap,
      child: child,
    );
  }

  factory BaseRoundedButton.top(
      {required Widget child,
      EdgeInsetsGeometry? padding,
      EdgeInsetsGeometry? margin,
      BorderRadiusGeometry? borderRadius,
      Color? backgroundColor,
      double? radius,
      VoidCallback? onTap}) {
    return BaseRoundedButton(
      padding: padding ?? const EdgeInsets.all(12.0),
      backgroundColor: backgroundColor ?? Colors.white,
      borderRadius: BorderRadius.vertical(top: Radius.circular(radius ?? 16.0)),
      margin: margin,
      onTap: onTap,
      child: child,
    );
  }
  factory BaseRoundedButton.bottom(
      {required Widget child,
      EdgeInsetsGeometry? padding,
      EdgeInsetsGeometry? margin,
      BorderRadiusGeometry? borderRadius,
      Color? backgroundColor,
      double? radius,
      VoidCallback? onTap}) {
    return BaseRoundedButton(
      padding: padding ?? const EdgeInsets.all(12.0),
      backgroundColor: backgroundColor ?? Colors.white,
      borderRadius:
          BorderRadius.vertical(bottom: Radius.circular(radius ?? 16.0)),
      margin: margin,
      onTap: onTap,
      child: child,
    );
  }
}
