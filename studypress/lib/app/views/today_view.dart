import "package:flutter/material.dart";
import 'package:study_press_mobile/app/views/learn_view.dart';
import "common/today_view_common.dart";
import 'common/start_button.dart';
import 'common/common-whit-card.dart';
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'common/actionButtonCommon.dart';
import 'common/common-black-card.dart';
import "common/syllabus_coverage.dart";
import "common/common_bottom_navigation.dart";
//import "learn_view.dart";
import "tests_view.dart";
import "revision_view.dart";
import "more_view.dart";
import "search.dart";
import "notification.dart";
import "profile.dart";


class TodayView extends StatefulWidget {
  const TodayView({super.key});

  @override
  State<TodayView> createState() => _TodayViewState();
}

class _TodayViewState extends State<TodayView> {
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
                CommonHeader(
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
                  onProfileTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileView(),
                      ),
                    );
                  },


                ),
                SizedBox(height: 22),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning Rakib",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color.fromRGBO(71, 85, 105, 1),
                              height: 1.2,
                            ),
                          ),
                          SizedBox(height: 9),
                          Text(
                            "Let's make today count!",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                              height: 1.2,
                              letterSpacing: -0.66,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Stay consistent, success is close.",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13.5,
                              height: 1.3,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 14),
                    Container(
                      width: 94,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(238, 240, 245, 1),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: const [
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "🔥",
                                style: TextStyle(fontSize: 21, height: 1),
                              ),

                              const SizedBox(width: 7),
                              const Text(
                                "12",
                                style: TextStyle(
                                  fontSize: 25,
                                  height: 1,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -0.75,
                                  color: Color.fromRGBO(17, 24, 39, 1),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "Day streak",
                            style: TextStyle(
                              fontSize: 12,
                              height: 1,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ), //Welcome ses
                // today Focus
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(22, 50, 75, 1),
                        Color.fromRGBO(11, 32, 51, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(11, 32, 51, 0.6),
                        offset: Offset(0, 20),
                        blurRadius: 40,
                        spreadRadius: -26,
                      ),
                    ],
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "TODAY'S FOCUS",
                              style: TextStyle(
                                fontSize: 10.5,
                                fontWeight: FontWeight.w600,
                                height: 1,
                                letterSpacing: 0.945,
                                color: Color.fromRGBO(232, 165, 0, 1),
                              ),
                            ),
                            SizedBox(height: 14),
                            const Text(
                              "12mistakes",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                letterSpacing: -0.66,
                                height: 1.2,
                                fontSize: 22,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "need revision ",
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "today",
                                    style: TextStyle(
                                      color: Color.fromRGBO(232, 165, 0, 1),
                                    ),
                                  ),
                                ],
                                style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.33,
                                  height: 1.25,
                                ),
                              ),
                            ),
                            SizedBox(height: 18),
                            // start button call
                            CommonButtonLarge(
                              title: "Start Revision",
                              onPressed: () {
                                print("");
                              },
                            ),

                            const SizedBox(height: 16),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.description_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(169, 188, 203, 1),
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  "Go to Revision List",
                                  style: TextStyle(
                                    fontSize: 11.5,
                                    fontWeight: FontWeight.w500,
                                    height: 1,
                                    color: Color.fromRGBO(169, 188, 203, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 8),
                      SizedBox(
                        width: 128,
                        height: 128,
                        child: Image.asset(
                          "assets/images/today.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 14), //Syllabus part
                const SyllabusCoverage(),
                const SizedBox(height: 14),
                //************************Today's plan
                CommonWhitCard(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CommonBoldText(
                              title: "Today's Plan",
                              fontSize: 13.5,
                            ),
                            CommonLightText(
                              title: "2 of 3 completed",
                              fontSize: 10.5,
                              color: const Color.fromRGBO(148, 163, 184, 1),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 14),
                      // Today's Plan
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 11),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(243, 245, 249, 1),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.fact_check_outlined,
                                      size: 15,
                                      color: Color.fromRGBO(11, 32, 51, 1),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  CommonBoldText(
                                    title: "12 Mistakes",
                                    fontSize: 11,
                                  ),
                                  const SizedBox(height: 4),
                                  CommonLightText(
                                    title: "Revise & improve",
                                    fontSize: 9.5,
                                    color: const Color.fromRGBO(148, 163, 184, 1),
                                  ),
                                  const SizedBox(height: 10),

                                  Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(232, 165, 0, 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.check,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 11),
                              decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: Color.fromRGBO(241, 243, 247, 1),
                                  ),
                                  right: BorderSide(
                                    color: Color.fromRGBO(241, 243, 247, 1),
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(250, 243, 228, 1),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.description_outlined,
                                      size: 15,
                                      color: Color.fromRGBO(138, 96, 0, 1),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  CommonBoldText(
                                    title: "Current Affairs",
                                    fontSize: 11,
                                  ),
                                  const SizedBox(height: 4),
                                  CommonLightText(
                                    title: "Read today's brief",
                                    fontSize: 9.5,
                                    color: const Color.fromRGBO(148, 163, 184, 1),
                                  ),
                                  const SizedBox(height: 10),

                                  Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(232, 165, 0, 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.check,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 11),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(243, 245, 249, 1),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    alignment: Alignment.center,
                                    child: const Icon(
                                      Icons.menu_book_outlined,
                                      size: 15,
                                      color: Color.fromRGBO(11, 32, 51, 1),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  CommonBoldText(
                                    title: "15 Vocab Words",
                                    fontSize: 11,
                                  ),
                                  const SizedBox(height: 4),
                                  CommonLightText(
                                    title: "Practice new words",
                                    fontSize: 9.5,
                                    color: const Color.fromRGBO(148, 163, 184, 1),
                                  ),
                                  const SizedBox(height: 10),

                                  Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color.fromRGBO(215, 222, 232, 1),
                                        width: 1.5,
                                      ),
                                    ),
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
                const SizedBox(height: 22,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonBoldText(title: "Quick Actions", fontSize: 17),
                    CommonLightText(title: "Swipe for more", fontSize: 11.5,
                    color: Color.fromRGBO(148, 163, 184, 1),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ActionButtonCommon(
                        icon: Icons.fact_check_outlined,
                        title: "Mock Test",
                      ),
                      const SizedBox(width: 10),
                      ActionButtonCommon(
                        icon: Icons.radar,
                        title: "Live Test",
                      ),
                      const SizedBox(width: 10),
                      ActionButtonCommon(
                        icon: Icons.warning_amber_outlined,
                        title: "Weak Topics",
                      ),
                      const SizedBox(width: 10),
                      ActionButtonCommon(
                        icon: Icons.autorenew,
                        title: "Revision",
                      ),
                      const SizedBox(width: 10),
                      ActionButtonCommon(
                        icon: Icons.bookmark_border,
                        title: "Saved",
                      ),
                      const SizedBox(width: 10),
                      ActionButtonCommon(
                        icon: Icons.description_outlined,
                        title: "Affairs",
                      ),
                      const SizedBox(width: 10),
                      ActionButtonCommon(
                        icon: Icons.menu_book_outlined,
                        title: "Vocabulary",
                      ),
                      const SizedBox(width: 10),
                      ActionButtonCommon(
                        icon: Icons.analytics_outlined,
                        title: "Reports",
                      ),
                      const SizedBox(width: 10),
                      ActionButtonCommon(
                        icon: Icons.badge_outlined,
                        title: "CV Maker",
                      ),
                      const SizedBox(width: 10),
                      ActionButtonCommon(
                        icon: Icons.auto_awesome,
                        title: "AI Mentor",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22,),
                CommonBlackCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(6, 3, 8, 3),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(232, 165, 0, 0.16),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(232, 165, 0, 1),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  "ONLINE COURSE",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.9,
                                    color: Color.fromRGBO(232, 165, 0, 1),
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CommonLightText(
                            title: "See all course",
                            fontSize: 11,
                            color: const Color.fromRGBO(195, 210, 222, 1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(18, 40, 61, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              "assets/images/course.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 13),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonBoldText(
                                  title: "Bangla Grammar Masterclass",
                                  fontSize: 14.5,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),

                                const SizedBox(height: 5),

                                CommonLightText(
                                  title: "Lesson 08 · 18 min left · next live Sunday 8:00 PM",
                                  fontSize: 11,
                                  color: const Color.fromRGBO(169, 188, 203, 1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 0.14),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0.64,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(240, 174, 18, 1),
                                        Color.fromRGBO(224, 154, 0, 1),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "64%",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(195, 210, 222, 1),
                              height: 1,
                            ),
                          ),
                          const SizedBox(width: 10),
                          CommonButtonLarge(
                            title: "Resume",
                            onPressed: () {},
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 26,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonBoldText(title: "Continue Learning", fontSize: 17),
                    // CommonLightText(title: "See all", fontSize: 11.5,
                    //   color: Color.fromRGBO(232, 165, 0, 1),
                    // ),
                    const Text("See alls",style: TextStyle(
                      fontSize: 13,
                      height: 1,
                      fontWeight: FontWeight.w600,color: Color.fromRGBO(233, 165, 0, 1),
                    ),
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 104,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        "assets/images/84332567-fb1f-4848-8591-f54f5edb5eb5.webp",
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text("Image Error"),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: CommonWhitCard(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonBoldText(
                                    title: "Bangladesh Affairs",
                                    fontSize: 15.5,
                                  ),
                                  const SizedBox(height: 8),
                                  CommonLightText(
                                    title: "Chapter 6 · সংবিধান",
                                    fontSize: 13,
                                    color: const Color.fromRGBO(71, 85, 105, 1),
                                  ),
                                  const SizedBox(height: 13),

                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 6,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(238, 240, 245, 1),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                          child: FractionallySizedBox(
                                            alignment: Alignment.centerLeft,
                                            widthFactor: 0.65,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(232, 165, 0, 1),
                                                borderRadius: BorderRadius.circular(3),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 9),
                                      const Text(
                                        "65%",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(100, 116, 139, 1),
                                          height: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(11, 32, 51, 1),
                                borderRadius: BorderRadius.circular(19),
                              ),
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.arrow_forward,
                                size: 17,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CommonBlackCard(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(232, 165, 0, 0.12),
                          border: Border.all(
                            color: const Color.fromRGBO(232, 165, 0, 0.45),
                          ),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.workspace_premium_outlined,
                          size: 25,
                          color: Color.fromRGBO(232, 165, 0, 1),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonBoldText(
                              title: "Unlock Full Potential",
                              fontSize: 14.5,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            const SizedBox(height: 6),
                            CommonLightText(
                              title: "Unlimited tests, reports and smart features.",
                              fontSize: 11.5,
                              color: const Color.fromRGBO(169, 188, 203, 1),
                            ),
                          ],
                        ),
                      ),
                      CommonButtonLarge(title: "Upgrade", onPressed: (){
                        print(" ");
                      },),
                    ],
                  ),
                ),







              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CommonBottomNavigation(
        selectedIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
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
