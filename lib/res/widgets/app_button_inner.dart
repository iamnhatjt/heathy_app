import 'package:flutter/material.dart' hide BoxShadow, BoxDecoration;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class AppButtonInner extends StatelessWidget {
  const AppButtonInner(
      {super.key,
      required this.child,
      this.margin,
      this.padding,
      this.backgroundColor,
      this.innerColors,
      this.radius,
      this.onTap});

  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? innerColors;
  final double? radius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 20)),
            boxShadow: [
              BoxShadow(
                color: innerColors ?? Colors.blueAccent,
                inset: true,
                blurRadius: 4,
              )
            ]),
        child: child,
      ),
    );
  }
}
