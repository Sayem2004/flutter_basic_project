
import "package:flutter/material.dart";

class FooterIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const FooterIcon({
    super.key,
    required this.icon,
    required this.title,
    this.selected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          constraints: const BoxConstraints(minHeight: 44),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 23,
                color: selected
                    ? const Color.fromRGBO(232, 165, 0, 1)
                    : const Color.fromRGBO(148, 163, 184, 1),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: 10.5,
                  height: 1,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.01,
                  color: selected
                      ? const Color.fromRGBO(232, 165, 0, 1)
                      : const Color.fromRGBO(148, 163, 184, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
