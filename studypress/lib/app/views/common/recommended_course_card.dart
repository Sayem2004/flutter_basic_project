

import "package:flutter/material.dart";
import "common-whit-card.dart";
import "boldText.dart";
import "lightText.dart";

class RecommendedCourseCard extends StatelessWidget {
  const RecommendedCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWhitCard(
      padding: EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Course Image
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: const Color.fromRGBO(238, 240, 245, 1),
                  child: Image.asset(
                    "assets/images/bdmap.webp",
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),

                // Hybrid Course Badge
                Positioned(
                  left: 14,
                  top: 14,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 9,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(252, 245, 228, 1),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: const CommonBoldText(
                      title: "HYBRID COURSE",
                      fontSize: 10,
                      color: Color.fromRGBO(138, 96, 0, 1),
                      height: 1,
                      letterSpacing: 0.6,
                    ),
                  ),
                ),
              ],
            ),

            // Course Information
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Course Title
                  const CommonBoldText(
                    title: "BCS 46th Complete Preparation",
                    fontSize: 16.5,
                    height: 1.3,
                    letterSpacing: -0.41,
                  ),

                  const SizedBox(height: 7),

                  // Course Description
                  const CommonLightText(
                    title:
                    "Md. Rahman Sir · 120 live classes + 240 recorded lessons",
                    fontSize: 12,
                    height: 1.4,
                  ),

                  const SizedBox(height: 12),

                  // Course Statistics
                  Wrap(
                    spacing: 14,
                    runSpacing: 8,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [

                      // Rating
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star_outline,
                            size: 15,
                            color: Color.fromRGBO(232, 165, 0, 1),
                          ),
                          const SizedBox(width: 5),
                          const CommonLightText(
                            title: "4.8",
                            fontSize: 11.5,
                            color: Color.fromRGBO(71, 85, 105, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),

                      // Students
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.person_outline,
                            size: 15,
                            color: Color.fromRGBO(100, 116, 139, 1),
                          ),
                          const SizedBox(width: 5),
                          const CommonLightText(
                            title: "12,480",
                            fontSize: 11.5,
                            color: Color.fromRGBO(71, 85, 105, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),

                      // Duration
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.access_time,
                            size: 15,
                            color: Color.fromRGBO(100, 116, 139, 1),
                          ),
                          const SizedBox(width: 5),
                          const CommonLightText(
                            title: "9 months",
                            fontSize: 11.5,
                            color: Color.fromRGBO(71, 85, 105, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // Price and View Button
                  Row(
                    children: [

                      // Course Price
                      const Expanded(
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 5,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [

                            CommonBoldText(
                              title: "৳2,499",
                              fontSize: 19,
                              height: 1,
                              letterSpacing: -0.57,
                            ),

                            Text(
                              "৳3,499",
                              style: TextStyle(
                                fontSize: 12.5,
                                height: 1,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(148, 163, 184, 1),
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),

                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(236, 247, 241, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(999),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 9,
                                  vertical: 5,
                                ),
                                child: Text(
                                  "29% OFF",
                                  style: TextStyle(
                                    fontSize: 10,
                                    height: 1,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.6,
                                    color: Color.fromRGBO(20, 98, 71, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 8),

                      // View Button
                      InkWell(
                        borderRadius: BorderRadius.circular(13),
                        onTap: () {
                          // Course Details Navigation
                        },
                        child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 44,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 13,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(11, 32, 51, 1),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CommonBoldText(
                                title: "View",
                                fontSize: 13,
                                color: Colors.white,
                                height: 1,
                              ),
                              SizedBox(width: 7),
                              Icon(
                                Icons.chevron_right,
                                size: 14,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
