import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.name, {
    Key? key,
    this.color = Colors.white,
    this.fontSize = 18,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);
  final String name;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
