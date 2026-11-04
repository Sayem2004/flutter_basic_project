import "package:flutter/material.dart";

class CourseActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const CourseActionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        border: Border.all(
          color: const Color.fromRGBO(232, 234, 240, 1),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20,
            color: const Color.fromRGBO(11, 32, 51, 1),
          ),

          const SizedBox(height: 11),
          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              height: 1.2,
              letterSpacing: -0.195,
              color: Color.fromRGBO(17, 24, 39, 1),
            ),
          ),

          const SizedBox(height: 5),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              height: 1.3,
              color: Color.fromRGBO(100, 116, 139, 1),
            ),
          ),
        ],
      ),
    );
  }
}