import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final Color textColor;
  final String text;
  final double size;

  const CustomText({
    super.key,
    required this.textColor,
    required this.text,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: textColor, fontSize: size),
    );
  }
}
