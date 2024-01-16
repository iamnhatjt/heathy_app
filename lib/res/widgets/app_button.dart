import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class _BaseRoundeButton extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;

  const _BaseRoundeButton({
    required this.child,
    super.key,
    this.padding,
    this.margin,
    this.borderRadius,
    this.backgroundColor,
    this.onTap,
    this.boxShadow,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            gradient: gradient,
            color: backgroundColor,
            borderRadius: borderRadius,
            boxShadow: boxShadow),
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
    super.boxShadow,
    super.gradient,
  });

  factory BaseRoundedButton.all(
      {required Widget child,
      Gradient? gradient,
      EdgeInsetsGeometry? padding,
      EdgeInsetsGeometry? margin,
      BorderRadiusGeometry? borderRadius,
      Color? backgroundColor,
      double? radius,
      VoidCallback? onTap,
      List<BoxShadow>? boxShadow}) {
    List<BoxShadow> customBoxShadow = [
      const BoxShadow(
          blurRadius: 1,
          color: Colors.black26,
          spreadRadius: 0,
          offset: Offset(5, -3),
          inset: true),
      const BoxShadow(
          blurRadius: 1,
          color: Colors.black12,
          spreadRadius: 2,
          offset: Offset(0, 1),
          inset: false),
    ];
    return BaseRoundedButton(
      boxShadow: boxShadow ?? customBoxShadow,
      padding: padding ?? const EdgeInsets.all(12.0),
      backgroundColor: backgroundColor ?? Colors.white,
      borderRadius: BorderRadius.circular(radius ?? 16.0),
      margin: margin,
      onTap: onTap,
      gradient: gradient,
      child: child,
    );
  }
}
