import "package:flutter/material.dart";

class CommonTab extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool selected;

  const CommonTab({
    super.key,
    required this.title,
    required this.icon,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 44,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: selected
            ? const Color.fromRGBO(11, 32, 51, 1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 16,
            color: selected
                ? const Color.fromRGBO(232, 165, 0, 1)
                : const Color.fromRGBO(17, 23, 31, 1),
          ),
          const SizedBox(width: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 10.5,
              fontWeight: FontWeight.w700,
              height: 1,
              letterSpacing: -0.2625,
              color: selected
                  ? const Color.fromRGBO(255, 255, 255, 1)
                  : const Color.fromRGBO(17, 23, 31, 1),
            ),
          ),
        ],
      ),
    );
  }
}