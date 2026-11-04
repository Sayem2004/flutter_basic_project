import "package:flutter/material.dart";
import "common-whit-card.dart";

class OnlineCourseCard extends StatelessWidget {
  const OnlineCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWhitCard(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Course Cover Image
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(238, 240, 245, 1),
                  borderRadius: BorderRadius.circular(17),
                ),
                clipBehavior: Clip.antiAlias,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image_outlined,
                      size: 18,
                      color: Color.fromRGBO(100, 116, 139, 1),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Cover",
                      style: TextStyle(
                        fontSize: 9,
                        color: Color.fromRGBO(100, 116, 139, 1),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 13),

              // Course Information
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CONTINUE COURSE",
                      style: TextStyle(
                        fontSize: 10.5,
                        fontWeight: FontWeight.w600,
                        height: 1,
                        letterSpacing: 0.84,
                        color: Color.fromRGBO(150, 105, 10, 1),
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      "Bangla Grammar Masterclass",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 1.25,
                        letterSpacing: -0.28,
                        color: Color.fromRGBO(17, 24, 39, 1),
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Lesson 08 · 18 min left",
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
            ],
          ),
          const SizedBox(height: 12),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Progress Bar
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    height: 6,
                    color: const Color.fromRGBO(238, 240, 245, 1),
                    alignment: Alignment.centerLeft,
                    child: FractionallySizedBox(
                      widthFactor: 0.64,
                      child: Container(
                        color: const Color.fromRGBO(232, 165, 0, 1),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 11),

              // Percentage
              const Text(
                "64%",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  height: 1,
                  color: Color.fromRGBO(150, 105, 10, 1),
                ),
              ),

              const SizedBox(width: 8),

              // Resume Button
              Container(
                constraints: const BoxConstraints(
                  minHeight: 40,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(11, 32, 51, 1),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      size: 14,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    SizedBox(width: 6),
                    Text(
                      "Resume",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        height: 1,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}