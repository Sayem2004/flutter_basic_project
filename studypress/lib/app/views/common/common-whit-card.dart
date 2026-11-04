import 'package:flutter/material.dart';
class CommonWhitCard extends StatelessWidget {
  final Widget child;
  const CommonWhitCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        border: Border.all(
          color: const Color.fromRGBO(238, 240, 245, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow:const [
          BoxShadow(
            color: Color.fromRGBO(11, 32, 51, 0.04),
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
          BoxShadow(
            color: Color.fromRGBO(11, 32, 51, 0.18),
            offset: Offset(0, 12),
            blurRadius: 28,
            spreadRadius: -20,
          ),
        ],

      ),
      child: child,
    );
  }
}
