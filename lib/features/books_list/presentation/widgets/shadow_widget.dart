import 'package:book_list_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

/* Created by Ahmed Ashraf on 4/25/2025.*/
class ShadowWidget extends StatelessWidget {
  final Color? shadowColor;
  final Color? backgroundColor;
  final double? radius;
  final List<BoxShadow>? shadow;
  final Widget child;
  final EdgeInsetsGeometry padding;

  const ShadowWidget({
    super.key,
    this.padding = EdgeInsets.zero,
    this.shadowColor,
    this.backgroundColor,
    this.radius,
    this.shadow,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xffFFFFFA),
        boxShadow:
            shadow ??
            [
              BoxShadow(
                color: shadowColor ?? ColorsManager.darkBlue.withValues(alpha: .3),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
        borderRadius: BorderRadius.circular(radius ?? 8),
      ),
      child: child,
    );
  }
}
