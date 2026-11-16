import 'package:flutter/material.dart';

class CustomShowImag extends StatelessWidget {
  final String imgUrl;

  const CustomShowImag({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(14),
      ),
      child: SizedBox(
        height: 70,
        child: Image.asset(
          imgUrl,
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
