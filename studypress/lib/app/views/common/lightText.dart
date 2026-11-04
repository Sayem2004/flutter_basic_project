
import "package:flutter/material.dart";

class CommonLightText extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;
  final double height;
  final double letterSpacing;

  const CommonLightText({
    super.key,
    required this.title,
    required this.fontSize,
    this.color = const Color.fromRGBO(100, 116, 139, 1), this.height= 1,
    this.letterSpacing = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }
}
