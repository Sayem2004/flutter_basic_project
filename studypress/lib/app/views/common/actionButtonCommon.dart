import "package:flutter/material.dart";

class ActionButtonCommon extends StatelessWidget {
  final IconData icon;
  final String title;

  const ActionButtonCommon({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 66,
            height: 66,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              border: Border.all(
                color: const Color.fromRGBO(238, 240, 245, 1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(21),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(11, 32, 51, 0.04),
                  offset: const Offset(0, 1),
                  blurRadius: 2,
                ),
                BoxShadow(
                  color: const Color.fromRGBO(11, 32, 51, 0.18),
                  offset: const Offset(0, 12),
                  blurRadius: 28,
                  spreadRadius: -20,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Icon(
              icon,
              size: 27,
              color: const Color.fromRGBO(11, 32, 51, 1),
            ),
          ),

          const SizedBox(height: 9),

          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(51, 65, 85, 1),
              height: 1.25,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}