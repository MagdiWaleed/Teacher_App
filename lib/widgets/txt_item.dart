import 'package:division/division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TxtItem extends StatelessWidget {
  final String? title;
  final double? size;
  final Color? color;
  final FontWeight? width;
  final double? marginRight;
  final double? marginLift;
  final double? marginBottom;
  final bool? txtAlignCenter;
  const TxtItem(
      {this.title,
      this.size,
      this.marginBottom,
      this.color,
      this.width,
      this.marginLift,
      this.marginRight,
      this.txtAlignCenter});
  @override
  Widget build(BuildContext context) {
    return Txt(
      title ?? "بدء الحصة",
      style: TxtStyle()
        ..fontWeight(width ?? FontWeight.bold)
        ..textColor(color ?? Colors.blue)
        ..fontFamily("Cairo")
        ..textAlign.center(txtAlignCenter ?? true)
        ..margin(
            right: marginRight ?? 0,
            bottom: marginBottom,
            left: marginLift ?? 0)
        ..fontSize(size ?? 14),
    );
  }
}
