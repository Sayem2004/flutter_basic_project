
import "package:flutter/material.dart";
import 'package:study_press_mobile/app/views/common/common-black-card.dart';
import 'package:study_press_mobile/app/views/common/common-whit-card.dart';
import 'common/header.dart';
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'common/button.dart';
import 'common/common_tab.dart';
import "common/syllabus_coverage.dart";
import "common/subject_list.dart";
import "common/online_course_card.dart";
import "common/course_action_card.dart";
import "common/upcoming_class_card.dart";
import "common/common_bottom_navigation.dart";
import "tests_view.dart";
import "today_view.dart";
import "revision_view.dart";
import "more_view.dart";
import "search.dart";
import 'notification.dart';



class LearnView extends StatefulWidget {
  const LearnView({super.key});

  @override
  State<LearnView> createState() => _LearnViewState();
}

class _LearnViewState extends State<LearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 2, 20, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(
                  onSearchTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchView(),
                      ),
                    );
                  },
                  onNotificationTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationView(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 18,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonBoldText(
                      title: "Learn", fontSize: 34,
                      height:1, letterSpacing: -1.19,
                    ),
                    const SizedBox(height: 11,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CommonLightText(title:  "BCS 46th · 41% covered", fontSize: 13,height: 1,),
                        const SizedBox(width: 6,),
                        const Icon(Icons.keyboard_arrow_down, size: 14,color: Color.fromRGBO(100, 116, 139, 1),)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16 ,),
                CommonBlackCard(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 86,
                              height: 86,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: SweepGradient(
                                  startAngle: 0,
                                  endAngle: 6.28319,
                                  colors: [
                                    Color.fromRGBO(232, 165, 0, 1),
                                    Color.fromRGBO(232, 165, 0, 1),
                                    Color.fromRGBO(255, 255, 255, 0.12),
                                    Color.fromRGBO(255, 255, 255, 0.12),
                                  ],
                                  stops: [0, 0.6, 0.6, 1],
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(12, 33, 53, 1),
                                  shape: BoxShape.circle,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const CommonBoldText(
                                      title: "3/5",
                                      fontSize: 20,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      letterSpacing: -0.6,
                                    ),
                                    const SizedBox(height: 5),
                                    const CommonLightText(
                                      title: "READ",
                                      fontSize: 9.5,
                                      color: Color.fromRGBO(143, 163, 180, 1),
                                      letterSpacing: 0.76,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 18),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CommonBoldText(
                                    title: "CONTINUE READING",
                                    fontSize: 11.5,
                                    color: Color.fromRGBO(232, 165, 0, 1),
                                    letterSpacing: 1.265,
                                  ),
                                  const SizedBox(height: 10),
                                  const CommonBoldText(
                                    title: "বাংলা · ব্যঞ্জনসন্ধি",
                                    fontSize: 19,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    height: 1.3,
                                    letterSpacing: -0.475,
                                  ),
                                  const SizedBox(height: 7),
                                  const CommonLightText(
                                    title: "Chapter 3 of 5 · 8 min left",
                                    fontSize: 12,
                                    color: Color.fromRGBO(169, 188, 203, 1),
                                    height: 1.5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18,),
                        CommonActionButton(
                          title: "Resume reading",
                          icon: Icons.play_arrow_rounded,
                          onPressed: () {},
                        ),
                      ],
                    ),
                ),
                const SizedBox(height: 18,),
                CommonWhitCard(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      CommonTab(
                        title: "Subjects",
                        icon: Icons.school_outlined,
                        selected: true,
                      ),

                      Expanded(
                        child: CommonTab(
                          title: "Questions",
                          icon: Icons.help_outline,
                        ),
                      ),

                      Expanded(
                        child: CommonTab(
                          title: "Progress",
                          icon: Icons.bar_chart,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                const SyllabusCoverage(),
                const SizedBox(height: 16,),
                const SubjectList(),

                Container(
                  margin: const EdgeInsets.fromLTRB(0, 24, 0, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CommonBoldText(
                        title: "Online Courses",
                        fontSize: 16,
                        letterSpacing: -0.4,
                      ),
                      Row(
                        children: [
                          const CommonBoldText(
                            title: "Browse",
                            fontSize: 12.5,
                            color: Color.fromRGBO(150, 105, 10, 1),
                          ),
                          const SizedBox(width: 6),
                          const Icon(
                            Icons.chevron_right,
                            size: 14,
                            color: Color.fromRGBO(150, 105, 10, 1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const OnlineCourseCard(),
                const SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                      child: CourseActionCard(
                        icon: Icons.grid_view_outlined,
                        title: "Browse courses",
                        subtitle: "Live · recorded · hybrid",
                      ),
                    ),

                    const SizedBox(width: 10),
                    Expanded(
                      child: CourseActionCard(
                        icon: Icons.menu_book_outlined,
                        title: "My courses",
                        subtitle: "2 in progress",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const UpcomingClassCard(),











              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CommonBottomNavigation(
        selectedIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const TodayView(),
                ),
              );
              break;

            case 1:
              break;

            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const TestsView(),
                ),
              );
              break;

            case 3:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const RevisionView(),
                ),
              );
              break;

            case 4:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MoreView(),
                ),
              );
              break;
          }
        },
      ),
    );
  }
}
