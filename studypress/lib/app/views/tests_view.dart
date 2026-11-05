import "package:flutter/material.dart";
import "package:study_press_mobile/app/views/common/boldText.dart";
import "package:study_press_mobile/app/views/common/common-black-card.dart";
import "package:study_press_mobile/app/views/common/common-whit-card.dart";
import "package:study_press_mobile/app/views/common/common_tab.dart";
import "package:study_press_mobile/app/views/common/lightText.dart";
import "common/header.dart";
import "common/common_bottom_navigation.dart";
import "today_view.dart";
import "learn_view.dart";
import 'common/button.dart';
import "common/recommended_tests.dart";
import "revision_view.dart";
class TestsView extends StatelessWidget {
  const TestsView({super.key});

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
                const Header(),
                const SizedBox(height: 18),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tests",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w800,
                            height: 1,
                            letterSpacing: -1.19,
                            color: Color.fromRGBO(17, 24, 39, 1),
                          ),
                        ),

                        const SizedBox(height: 11),

                        const Text(
                          "BCS 46th · 3 unfinished",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Color.fromRGBO(100, 116, 139, 1),
                          ),
                        ),
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
                          Icon(
                            Icons.filter_list,
                            size: 17,
                            color: Color.fromRGBO(11, 32, 51, 1),
                          ),

                          SizedBox(width: 8),

                          Text(
                            "Filter",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 9,
                                      height: 9,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(232, 165, 0, 1),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(width: 9),
                                    CommonLightText(
                                      title: "LIVE MODEL TEST . TONIGHT",
                                      fontSize: 11,
                                      color: Color.fromRGBO(232, 165, 0, 1),
                                      letterSpacing: 1.1,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                CommonBoldText(
                                  title: "Full Model Test12",
                                  fontSize: 21,
                                  height: 1.2,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                const SizedBox(height: 8),
                                CommonLightText(
                                  title:
                                      "100 questions · 90 min · starts 9:00 PM · 4,182 registered",
                                  fontSize: 12,
                                  height: 1.5,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 14),
                          Container(
                            width: 74,
                            height: 74,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromRGBO(232, 165, 0, 0.55),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(232, 165, 0, 0.28),
                                  blurRadius: 26,
                                ),
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                const Icon(
                                  Icons.calendar_month_outlined,
                                  size: 29,
                                  color: Color.fromRGBO(232, 165, 0, 1),
                                ),
                                const Positioned(
                                  bottom: 22,
                                  child: Icon(
                                    Icons.star,
                                    size: 11,
                                    color: Color.fromRGBO(232, 165, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          CommonActionButton(
                            title: "Set reminder",
                            icon: Icons.notifications_none,
                            buttonWidth: null,
                            margin: EdgeInsets.zero,
                            onPressed: () {},
                          ),
                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 13,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(
                                  255,
                                  255,
                                  255,
                                  0.16,
                                ),
                              ),
                              color: const Color.fromRGBO(255, 255, 255, 0.05),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 16,
                                  color: Color.fromRGBO(195, 210, 222, 1),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "in 2h 14m",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(195, 210, 222, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                CommonWhitCard(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      CommonTab(
                        title: "Recommended",
                        icon: Icons.star_outline,
                        selected: true,
                      ),
                      Expanded(
                        child: CommonTab(
                          title: "Full mock",
                          icon: Icons.insert_drive_file_outlined,
                        ),
                      ),
                      Expanded(
                        child: CommonTab(
                          title: "Subject / Chapter",
                          icon: Icons.menu_book_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.auto_awesome,
                      size: 17,
                      color: Color.fromRGBO(232, 165, 0, 1),
                    ),
                    const SizedBox(width: 9),
                    const Expanded(
                      child: Text(
                        "Chosen from your weak topics, unfinished tests and last 3 mock scores.",
                        style: TextStyle(
                          fontSize: 13,
                          height: 1.45,
                          color: Color.fromRGBO(100, 116, 139, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const RecommendedTests(),
                const SizedBox(height: 26,),
                CommonLightText(title: "Recent results", fontSize: 12,height: 1,letterSpacing: 1,fontWeight: FontWeight.w600,),
                const SizedBox(height: 12,),
                CommonWhitCard(
                  padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                          width: 46,height: 46,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(200, 220, 220, 1),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonLightText(title: "82", fontSize: 15,fontWeight: FontWeight.w700,height: 1,color: Color.fromRGBO(11, 32, 51, 1),),
                              const SizedBox(height: 2,),
                              CommonLightText(title: "/100", fontSize: 9, height: 1,color: Color.fromRGBO(100, 116, 139, 1),)
                            ],
                          ),
                        ),
                        const SizedBox(width: 14,),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonLightText(
                                title: "Full Model Test 10",
                                fontSize: 14,
                                color: Color.fromRGBO(17, 23, 31, 1),
                                height: 1.2,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: 4),
                              CommonLightText(
                                title: "Rank 214 of 3,908 · 2 days ago",
                                fontSize: 12,
                                height: 1.3,
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right,
                          size: 17,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),

                      ],

                    ),
                ),



              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: CommonBottomNavigation(
        selectedIndex: 2,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TodayView()),
              );
              break;

            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LearnView()),
              );
              break;

            case 2:
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
              break;
          }
        },
      ),
    );
  }
}
