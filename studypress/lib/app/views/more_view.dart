
import "package:flutter/material.dart";
import "package:study_press_mobile/app/views/common/boldText.dart";
//import "package:study_press_mobile/app/views/common/common-black-card.dart";
import "package:study_press_mobile/app/views/common/common-whit-card.dart";
import "package:study_press_mobile/app/views/common/lightText.dart";
import "common/header.dart";
import "common/common_bottom_navigation.dart";
import "today_view.dart";
import "learn_view.dart";
import "tests_view.dart";
import "revision_view.dart";
import "common/profile_membership_card.dart";
import "common/career_section.dart";
import "common/account_section.dart";



class MoreView extends StatelessWidget {
  const MoreView({super.key});

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
                CommonBoldText(title: "More", fontSize: 34,height: 1,letterSpacing: -0.42,),
                const SizedBox(height: 11,),
                CommonLightText(title: "Everything you need in one place", fontSize: 13,height: 1,),

                const SizedBox(height: 16),
                const ProfileMembershipCard(),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 24, 0, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CommonBoldText(
                        title: "Daily Habit",
                        fontSize: 16,
                        letterSpacing: -0.4,
                      ),
                      Row(
                        children: [
                          const CommonBoldText(
                            title: "See all",
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

                CommonWhitCard(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(243, 245, 249, 1),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: const Icon(
                                Icons.article_outlined,
                                size: 20,
                                color: Color.fromRGBO(11, 32, 51, 1),
                              ),
                            ),
                            const SizedBox(width: 13),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonBoldText(
                                    title: "Current Affairs",
                                    fontSize: 14,
                                    color: Color.fromRGBO(17, 24, 39, 1),
                                    height: 1.2,
                                  ),
                                  SizedBox(height: 4),
                                  CommonLightText(
                                    title: "Daily quiz & articles",
                                    fontSize: 11.5,
                                    height: 1.35,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(252, 245, 228, 1),
                                borderRadius: BorderRadius.circular(999),
                              ),
                              child: const CommonLightText(
                                title: "Quiz ready",
                                fontSize: 10.5,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(138, 96, 0, 1),
                              ),
                            ),
                            const SizedBox(width: 8),

                            const Icon(
                              Icons.chevron_right,
                              size: 16,
                              color: Color.fromRGBO(148, 163, 184, 1),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: const Color.fromRGBO(238, 240, 245, 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(243, 245, 249, 1),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: const Icon(
                                Icons.translate,
                                size: 20,
                                color: Color.fromRGBO(11, 32, 51, 1),
                              ),
                            ),
                            const SizedBox(width: 13),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonBoldText(
                                    title: "Vocabulary",
                                    fontSize: 14,
                                    color: Color.fromRGBO(17, 24, 39, 1),
                                    height: 1.2,
                                  ),
                                  SizedBox(height: 4),
                                  CommonLightText(
                                    title: "Level 2 · 315 / 500 pts",
                                    fontSize: 11.5,
                                    height: 1.35,
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(252, 245, 228, 1),
                                borderRadius: BorderRadius.circular(999),
                              ),
                              child: const CommonLightText(
                                title: "+35 today",
                                fontSize: 10.5,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(138, 96, 0, 1),
                              ),
                            ),

                            const SizedBox(width: 8),

                            const Icon(
                              Icons.chevron_right,
                              size: 16,
                              color: Color.fromRGBO(148, 163, 184, 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24,),
                CommonBoldText(title: "Career", fontSize: 17,height: 1,letterSpacing: -0.3,),
                const SizedBox(height: 12,),
                CareerSection(
                  features: [
                    CareerFeature(
                      title: "Career Hub",
                      subtitle: "Explore opportunities",
                      icon: Icons.work_outline,
                    ),
                    CareerFeature(
                      title: "CV Maker",
                      subtitle: "Create a resume",
                      icon: Icons.description_outlined,
                    ),
                    CareerFeature(
                      title: "Jobs / Abroad",
                      subtitle: "Find jobs & study",
                      icon: Icons.public,
                    ),
                    CareerFeature(
                      title: "AI Mentor",
                      subtitle: "Smart guidance anytime",
                      icon: Icons.auto_awesome,
                      badge: "Beta",
                    ),
                  ],
                ),
                const SizedBox(height: 24,),
                CommonBoldText(title: "Account", fontSize: 17,height: 1,letterSpacing: -0.3,),
                const SizedBox(height: 12,),
                AccountSection(
                  items: [
                    AccountItem(
                      title: "Online Courses",
                      subtitle: "Live classes, recorded lessons, my courses",
                      icon: Icons.grid_view_outlined,
                    ),
                    AccountItem(
                      title: "Membership & Cart",
                      subtitle: "Manage plan & purchases",
                      icon: Icons.shopping_cart_outlined,
                    ),
                    AccountItem(
                      title: "Profile",
                      subtitle: "Personal information",
                      icon: Icons.person_outline,
                    ),
                    AccountItem(
                      title: "Notifications",
                      subtitle: "Manage all notifications",
                      icon: Icons.notifications_none,
                    ),
                    AccountItem(
                      title: "Search",
                      subtitle: "Find anything fast",
                      icon: Icons.search,
                    ),
                    AccountItem(
                      title: "Language",
                      subtitle: "বাংলা + English",
                      icon: Icons.language,
                    ),
                    AccountItem(
                      title: "Offline downloads",
                      subtitle: "312 MB stored",
                      icon: Icons.download_outlined,
                    ),
                  ],
                ),










              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: CommonBottomNavigation(
        selectedIndex: 4,
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
