import "package:flutter/material.dart";

class CommonBlackCard extends StatelessWidget {
  final Widget child;

  const CommonBlackCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(22, 50, 77, 1),
            Color.fromRGBO(10, 27, 44, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(11, 32, 51, 0.6),
            offset: const Offset(0, 20),
            blurRadius: 40,
            spreadRadius: -26,
          ),
        ],
      ),
      child: child,
    );
  }
}