
import "package:flutter/material.dart";

class CommonBoldText extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;

  const CommonBoldText({
    super.key,
    required this.title,
    required this.fontSize,
    this.color = const Color.fromRGBO(17, 24, 39, 1),
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
