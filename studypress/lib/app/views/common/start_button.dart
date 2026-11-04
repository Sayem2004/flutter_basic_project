import 'package:flutter/material.dart';
class CommonButtonLarge extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CommonButtonLarge({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(232, 165, 0, 1),
          borderRadius: BorderRadius.circular(999),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(11, 32, 51, 1),
                height: 1,
              ),
            ),
            const SizedBox(width: 9),
            Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(231, 164, 0, 1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward,
                size: 14,
                color: Color.fromRGBO(11, 32, 51, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}