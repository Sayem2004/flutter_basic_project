import "package:flutter/material.dart";
import "common-whit-card.dart";

class UpcomingClassCard extends StatelessWidget {
  const UpcomingClassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWhitCard(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(253, 240, 238, 1),
              borderRadius: BorderRadius.circular(13),
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.sensors,
              size: 19,
              color: Color.fromRGBO(150, 48, 38, 1),
            ),
          ),

          const SizedBox(width: 13),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upcoming live class",
                  style: TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                    letterSpacing: -0.2025,
                    color: Color.fromRGBO(17, 24, 39, 1),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "সন্ধি · doubt clearing · Sunday 8:00 PM",
                  style: TextStyle(
                    fontSize: 11.5,
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                    color: Color.fromRGBO(100, 116, 139, 1),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right,
            size: 16,
            color: Color.fromRGBO(148, 163, 184, 1),
          ),
        ],
      ),
    );
  }
}