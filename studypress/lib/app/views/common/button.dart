import "package:flutter/material.dart";

class CommonActionButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback onPressed;

  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;

  final bool showIcon;
  final bool showGradient;

  const CommonActionButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
    this.backgroundColor = const Color.fromRGBO(240, 174, 18, 1),
    this.textColor = const Color.fromRGBO(17, 24, 39, 1),
    this.iconColor = const Color.fromRGBO(17, 24, 39, 1),
    this.showIcon = true,
    this.showGradient = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        color: showGradient ? null : backgroundColor,
        gradient: showGradient
            ? LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            backgroundColor,
            Color.fromRGBO(
              (backgroundColor.r * 255).round() - 16 < 0
                  ? 0
                  : (backgroundColor.r * 255).round() - 16,
              (backgroundColor.g * 255).round() - 20 < 0
                  ? 0
                  : (backgroundColor.g * 255).round() - 20,
              (backgroundColor.b * 255).round() - 18 < 0
                  ? 0
                  : (backgroundColor.b * 255).round() - 18,
              1,
            ),
          ],
        )
            : null,
        borderRadius: BorderRadius.circular(14),
        boxShadow: showGradient
            ? [
          BoxShadow(
            color: backgroundColor.withValues(alpha: 0.35),
            offset: const Offset(0, 8),
            blurRadius: 18,
            spreadRadius: -10,
          ),
        ]
            : [],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (showIcon && icon != null) ...[
                  Icon(
                    icon,
                    size: 16,
                    color: iconColor,
                  ),
                  const SizedBox(width: 9),
                ],
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w800,
                    height: 1,
                    letterSpacing: -0.2175,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}