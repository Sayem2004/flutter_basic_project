
import "package:flutter/material.dart";

class CommonBoldText extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;
  final double height;
  final double letterSpacing;

  const CommonBoldText({
    super.key,
    required this.title,
    required this.fontSize,
    this.color = const Color.fromRGBO(17, 24, 39, 1),this.height = 1,
    this.letterSpacing = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
        color: color,
      ),
    );
  }
}
