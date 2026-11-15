
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-whit-card.dart";
import "common/button.dart";

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  int selectedTab = 0;

  final List<String> tabs = [
    "In Progress",
    "Upcoming",
    "Completed",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 6, 20, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                const BackHeader(
                  title: "My Courses",
                ),

                const SizedBox(height: 16),

                // Course Tabs
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(232, 234, 240, 1),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: List.generate(
                      tabs.length,
                          (index) {
                        final bool isSelected = selectedTab == index;

                        return Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              setState(() {
                                selectedTab = index;
                              });
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                minHeight: 44,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? const Color.fromRGBO(11, 32, 51, 1)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.center,
                              child: CommonBoldText(
                                title: tabs[index],
                                fontSize: 10.5,
                                height: 1,
                                letterSpacing: -0.2625,
                                fontWeight: FontWeight.w700,
                                color: isSelected
                                    ? const Color.fromRGBO(255, 255, 255, 1)
                                    : const Color.fromRGBO(17, 23, 31, 1),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Tab Content
                if (selectedTab == 0) ...[
                  inProgressCourses(),
                ] else if (selectedTab == 1) ...[
                  upcomingCourses(),
                ] else ...[
                  completedCourses(),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  // In Progress Courses
  Widget inProgressCourses() {
    return Column(
      children: [
        courseProgressCard(
          title: "Bangla Grammar Masterclass",
          instructor: "Rahman Sir",
          subtitle: "Lesson 08 · 18 min left",
          progress: 64,
        ),

        const SizedBox(height: 12),

        courseProgressCard(
          title: "BCS 46th Complete Preparation",
          instructor: "Rahman Sir",
          subtitle: "Next live: Sunday 8:00 PM",
          progress: 12,
        ),
      ],
    );
  }

  // Course Progress Card
  Widget courseProgressCard({
    required String title,
    required String instructor,
    required String subtitle,
    required int progress,
  }) {
    return CommonWhitCard(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Course Cover
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(238, 240, 245, 1),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image_outlined,
                      size: 18,
                      color: Color.fromRGBO(100, 116, 139, 1),
                    ),
                    SizedBox(height: 4),
                    CommonLightText(
                      title: "Cover",
                      fontSize: 9,
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 13),

              // Course Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonBoldText(
                      title: title,
                      fontSize: 14,
                      height: 1.25,
                      letterSpacing: -0.28,
                      fontWeight: FontWeight.w700,
                    ),

                    const SizedBox(height: 5),

                    CommonLightText(
                      title: instructor,
                      fontSize: 11.5,
                      height: 1.3,
                    ),

                    const SizedBox(height: 6),

                    CommonLightText(
                      title: subtitle,
                      fontSize: 11.5,
                      height: 1.3,
                      color: const Color.fromRGBO(150, 105, 10, 1),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 13),

          // Progress and Continue
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    height: 6,
                    color: const Color.fromRGBO(238, 240, 245, 1),
                    alignment: Alignment.centerLeft,
                    child: FractionallySizedBox(
                      widthFactor: progress / 100,
                      child: Container(
                        color: const Color.fromRGBO(232, 165, 0, 1),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 11),

              CommonBoldText(
                title: "$progress%",
                fontSize: 12,
                height: 1,
                fontWeight: FontWeight.w800,
                color: const Color.fromRGBO(150, 105, 10, 1),
              ),

              const SizedBox(width: 10),

              CommonActionButton(
                title: "Continue",
                buttonWidth: null,
                margin: EdgeInsets.zero,
                showGradient: false,
                backgroundColor: const Color.fromRGBO(11, 32, 51, 1),
                textColor: const Color.fromRGBO(255, 255, 255, 1),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Upcoming Courses
  Widget upcomingCourses() {
    return CommonWhitCard(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
      child: Column(
        children: [
          upcomingCourseRow(
            title: "Bank Job Preparation Batch",
            subtitle: "Starts 1 Sep · 14 seats left",
          ),

          const Divider(
            height: 1,
            thickness: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),

          upcomingCourseRow(
            title: "English Foundation Course",
            subtitle: "Starts 12 Sep · enrolled",
          ),
        ],
      ),
    );
  }

  // Upcoming Course Row
  Widget upcomingCourseRow({
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(243, 245, 249, 1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.calendar_month_outlined,
              size: 20,
              color: Color.fromRGBO(11, 32, 51, 1),
            ),
          ),

          const SizedBox(width: 13),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonBoldText(
                  title: title,
                  fontSize: 13.5,
                  height: 1.2,
                  letterSpacing: -0.2025,
                  fontWeight: FontWeight.w700,
                ),

                const SizedBox(height: 5),

                CommonLightText(
                  title: subtitle,
                  fontSize: 11.5,
                  height: 1.3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Completed Courses
  Widget completedCourses() {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: CommonWhitCard(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            // Completed Icon
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(236, 247, 241, 1),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.check,
                size: 20,
                color: Color.fromRGBO(25, 122, 85, 1),
              ),
            ),

            const SizedBox(width: 13),

            // Course Details
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonBoldText(
                    title: "Current Affairs Special Batch",
                    fontSize: 13.5,
                    height: 1.2,
                    letterSpacing: -0.2025,
                    fontWeight: FontWeight.w700,
                  ),

                  SizedBox(height: 5),

                  CommonLightText(
                    title: "Completed · 100% · certificate ready",
                    fontSize: 11.5,
                    height: 1.3,
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
      ),
    );
  }
}
