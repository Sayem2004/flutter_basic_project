
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-whit-card.dart";
import 'common/button.dart';

class CurrentAffairsView extends StatelessWidget {
  const CurrentAffairsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackHeader(
                  title: "Current Affairs",
                  subtitle: "বৃহস্পতিবার · ১২ নভেম্বর",
                  subtitleColor: const Color.fromRGBO(148, 163, 184, 1),
                ),

                const SizedBox(height: 16),
                CommonWhitCard(
                  padding: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 145,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(238, 240, 245, 1),
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                        ),
                        child: const Center(
                          child: CommonLightText(
                            title: "EDITORIAL HERO IMAGE",
                            fontSize: 10,
                            color: Color.fromRGBO(148, 163, 184, 1),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CommonLightText(
                              title: "TODAY'S BRIEF · 6 ITEMS",
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.8,
                              color: Color.fromRGBO(192, 122, 24, 1),
                            ),

                            const SizedBox(height: 8),

                            const CommonBoldText(
                              title:
                              "Budget 2026, a new UNDP report and the Padma rail link extension",
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              height: 1.4,
                            ),

                            const SizedBox(height: 7),

                            const CommonLightText(
                              title:
                              "4 min read · quiz after · exam perspective included",
                              fontSize: 10.5,
                              color: Color.fromRGBO(148, 163, 184, 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


                const SizedBox(height: 12),
                CommonWhitCard(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CommonBoldText(
                              title: "Today's quiz is ready",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(92, 66, 0, 1),
                            ),

                            const SizedBox(height: 4),

                            const CommonLightText(
                              title: "10 questions from this brief",
                              fontSize: 12,
                              height: 1.35,
                              color: Color.fromRGBO(138, 96, 0, 1),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      CommonActionButton(
                        title: "Take quiz",
                        buttonWidth: null,
                        margin: EdgeInsets.zero,
                        backgroundColor: const Color.fromRGBO(11, 32, 51, 1),
                        textColor: const Color.fromRGBO(255, 255, 255, 1),
                        showGradient: false,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),








              ],
            ),
          ),
        ),
      ),
    );
  }
}
