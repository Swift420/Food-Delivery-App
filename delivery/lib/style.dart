import 'package:delivery/colors.dart';
import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final double height;

  const PrimaryText(
      {required this.text,
      this.color: AppColors.secondary,
      this.size: 20,
      this.height: 1.3,
      this.fontWeight: FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: 'Poppins',
        height: height,
      ),
    );
  }
}
