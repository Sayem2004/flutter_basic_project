
import "package:flutter/material.dart";
import "package:study_press_mobile/app/views/common/common-black-card.dart";
import "common/header.dart";
import "common/common_bottom_navigation.dart";
import "today_view.dart";
import "learn_view.dart";
import "tests_view.dart";
import 'common/boldText.dart';
import 'common/lightText.dart';
import "common/button.dart";
import 'common/common-whit-card.dart';
import 'common/common_tab.dart';
import "common/revision_subject_list.dart";
import "more_view.dart";


class RevisionView extends StatelessWidget {
  const RevisionView({super.key});

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
                Header(),
                const SizedBox(height: 18),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonBoldText(title: "Revision", fontSize: 34,height: 1,letterSpacing: -1.19,color: Color.fromRGBO(17, 24, 39, 1),),
                        const SizedBox(height: 5),
                        CommonLightText(title: "Built from your own mistakes", fontSize: 13,height: 1,color: Color.fromRGBO(100, 116, 139, 1),fontWeight: FontWeight.w400,),
                      ],
                    ),
                    Container(
                      height: 42,
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(228, 232, 240, 1),
                        ),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.bookmark_border,
                            size: 17,
                            color: Color.fromRGBO(11, 32, 51, 1),
                          ),
                          SizedBox(width: 8),
                          Text("Saved",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 1,
                              color: Color.fromRGBO(17, 24, 39, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                CommonBlackCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 86,
                            height: 86,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: SweepGradient(
                                colors: [
                                  Color.fromRGBO(232, 165, 0, 1),
                                  Color.fromRGBO(232, 165, 0, 1),
                                  Color.fromRGBO(255, 255, 255, 0.12),
                                  Color.fromRGBO(255, 255, 255, 0.12),
                                ],
                                stops: [0, 0.62, 0.62, 1],
                              ),
                            ),
                            child: Center(
                              child: Container(
                                width: 68,
                                height: 68,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(12, 33, 53, 1),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CommonBoldText(
                                      title: "24",
                                      fontSize: 24,
                                      color: Colors.white,
                                      height: 1,
                                      letterSpacing: -0.72,
                                    ),

                                    SizedBox(height: 5),

                                    CommonLightText(
                                      title: "DUE",
                                      fontSize: 9.5,
                                      color: Color.fromRGBO(143, 163, 180, 1),
                                      height: 1,
                                      letterSpacing: 0.76,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 18),

                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonBoldText(
                                  title: "DUE TODAY · STAGE 2",
                                  fontSize: 11.5,
                                  color: Color.fromRGBO(232, 165, 0, 1),
                                ),

                                SizedBox(height: 10),

                                CommonBoldText(
                                  title: "~11 min re-test",
                                  fontSize: 19,
                                  color: Colors.white,
                                  height: 1.25,
                                ),

                                SizedBox(height: 7),

                                CommonLightText(
                                  title: "Math 9 · বাংলা 7 · English 5 · GK 3",
                                  fontSize: 12,
                                  color: Color.fromRGBO(169, 188, 203, 1),
                                  height: 1.5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      CommonActionButton(
                        title: "Start revision",
                        icon: Icons.refresh,
                        buttonWidth: null,
                        margin: EdgeInsets.zero,
                        backgroundColor: const Color.fromRGBO(240, 174, 18, 1),
                        textColor: const Color.fromRGBO(17, 24, 39, 1),
                        iconColor: const Color.fromRGBO(17, 24, 39, 1),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),

                CommonWhitCard(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      const CommonTab(
                        title: "Due today",
                        icon: Icons.access_time,
                        selected: true,
                      ),

                      const Expanded(
                        child: CommonTab(
                          title: "Upcoming",
                          icon: Icons.calendar_today_outlined,
                        ),
                      ),

                      const Expanded(
                        child: CommonTab(
                          title: "Mastered",
                          icon: Icons.check_circle_outline,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                RevisionSubjectList(
                  subjects: [
                    RevisionSubject(
                      title: "Math · Interest & Percentage",
                      description: "9 questions · wrong twice · stage 1",
                      count: 2,
                    ),
                    RevisionSubject(
                      title: "বাংলা ব্যাকরণ · কারক",
                      description: "7 questions · stage 2",
                      count: 1,
                    ),
                    RevisionSubject(
                      title: "English · Prepositions",
                      description: "5 questions · stage 2",
                      count: 1,
                    ),
                    RevisionSubject(
                      title: "GK · আন্তর্জাতিক সংস্থা",
                      description: "3 questions · stage 3",
                      count: 1,
                    ),
                  ],
                ),


                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 14,
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(239, 240, 246, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            bottomLeft: Radius.circular(18),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.description_outlined,
                              size: 21,
                              color: Color.fromRGBO(11, 32, 51, 1),
                            ),
                            const SizedBox(width: 9),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonBoldText(title: "Review List",
                                    fontSize: 13.5,
                                    color: Color.fromRGBO(17, 23, 31, 1),
                                    height: 1.2,
                                  ),
                                  SizedBox(height: 4),
                                  CommonLightText(title: "See all topics",
                                    fontSize: 11,
                                    height: 1.35,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: 1,
                      height: 38,
                      color: const Color.fromRGBO(238, 240, 245, 1),
                    ),

                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 14,
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(239, 240, 246, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.track_changes,
                              size: 21,
                              color: Color.fromRGBO(11, 32, 51, 1),
                            ),
                            const SizedBox(width: 9),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonBoldText(title: "Weak topics",
                                    fontSize: 13.5,
                                    color: Color.fromRGBO(17, 23, 31, 1),
                                    height: 1.2,
                                  ),
                                  SizedBox(height: 4),
                                  CommonLightText(title: "Needs focus",
                                    fontSize: 11,
                                    height: 1.35,
                                  ),
                                ],
                              ),
                            ),

                            const Icon(
                              Icons.chevron_right,
                              size: 15,
                              color: Color.fromRGBO(148, 163, 184, 1),
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
        ),
      ),
      bottomNavigationBar: CommonBottomNavigation(
        selectedIndex: 3,
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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LearnView(),
                ),
              );
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
