import "package:flutter/material.dart";

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  const CommonButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = const Color.fromRGBO(240, 174, 18, 1),
    this.textColor = const Color.fromRGBO(17, 24, 39, 1),
    this.borderColor = const Color.fromRGBO(240, 174, 18, 1),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        minimumSize: const Size(double.infinity, 52),
        padding: const EdgeInsets.all(16),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(color: borderColor),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}


