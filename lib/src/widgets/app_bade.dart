import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {
  final Color borderColor;
  final Widget child;
  final double borderRadius;
  final EdgeInsets padding;

  AppBadge({
    this.borderColor = Colors.white,
    this.borderRadius = 10.0,
    @required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          style: BorderStyle.solid,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
