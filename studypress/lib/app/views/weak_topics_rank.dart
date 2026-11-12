
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-whit-card.dart";
import "common/button.dart";
//import 'bangla.dart';
import 'revision.dart';
import "question.dart";


class WeakTopicsRankView extends StatelessWidget {
  const WeakTopicsRankView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> topics = [
      {"name": "Math · Interest", "progress": 41},
      {"name": "বাংলা · কারক ও বিভক্তি", "progress": 48},
      {"name": "ICT · নেটওয়ার্ক টপোলজি", "progress": 52},
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackHeader(title: "Weak topics & rank", subtitle: "Recalculated after every mock",
                  subtitleColor: const Color.fromRGBO(148, 163, 184, 1,),
                ),

                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(236, 247, 241, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Column(
                          children: [
                            CommonBoldText(
                              title: "12",
                              fontSize: 18,
                              color: Color.fromRGBO(20, 98, 71, 1),
                            ),
                            SizedBox(height: 6),
                            CommonLightText(
                              title: "STRONG",
                              fontSize: 10.5,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(44, 107, 84, 1),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(252, 245, 228, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Column(
                          children: [
                            CommonBoldText(
                              title: "5",
                              fontSize: 18,
                              color: Color.fromRGBO(138, 96, 0, 1),
                            ),
                            SizedBox(height: 6),
                            CommonLightText(
                              title: "IMPROVING",
                              fontSize: 10.5,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(138, 96, 0, 1),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(253, 240, 238, 1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Column(
                          children: [
                            CommonBoldText(title: "3", fontSize: 18, color: Color.fromRGBO(150, 48, 38, 1),),
                            SizedBox(height: 6),
                            CommonLightText(
                              title: "NEEDS WORK",
                              fontSize: 10.5,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(150, 48, 38, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 22),

                const CommonLightText(
                  title: "NEEDS WORK",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.96,
                ),

                const SizedBox(height: 4),
                Column(
                  children: [
                    for (int i = 0; i < topics.length; i++)
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 2,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      CommonBoldText(
                                        title: topics[i]["name"] as String,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),

                                      const SizedBox(height: 9),

                                      SizedBox(
                                        width: 120,
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(3),
                                          child: LinearProgressIndicator(
                                            value:
                                            (topics[i]["progress"] as int) /
                                                100,
                                            minHeight: 5,
                                            backgroundColor:
                                            const Color.fromRGBO(
                                              238, 240, 245, 1,
                                            ),
                                            valueColor:
                                            const AlwaysStoppedAnimation<
                                                Color>(
                                              Color.fromRGBO(
                                                185, 58, 47, 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 12),
                                CommonActionButton(
                                  title: "Practise",
                                    onPressed: () {
                                      if (topics[i]["name"] == "Math · Interest") {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const QuestionView(),
                                          ),
                                        );
                                      } else if (topics[i]["name"] == "বাংলা · কারক ও বিভক্তি") {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const Revision(),
                                          ),
                                        );
                                      } else if (topics[i]["name"] == "ICT · নেটওয়ার্ক টপোলজি") {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const QuestionView(),
                                          ),
                                        );
                                      }
                                     },
                                  backgroundColor: const Color.fromRGBO(11, 32, 51, 1),
                                  textColor: const Color.fromRGBO(255, 255, 255, 1),
                                  showIcon: false,
                                  showGradient: false,
                                  buttonWidth: 100,
                                  margin: EdgeInsets.zero,
                                ),
                              ],
                            ),
                          ),

                          if (i != topics.length - 1)
                            const Divider(
                              height: 1,
                              thickness: 1,
                              color: Color.fromRGBO(238, 240, 245, 1),
                            ),
                        ],
                      ),
                  ],
                ),

                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(232, 234, 240, 1),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CommonLightText(
                              title: "Your rank this month",
                              fontSize: 11,
                              color: Color.fromRGBO(17, 24, 39, 1),
                            ),

                            const SizedBox(height: 5),

                            const CommonLightText(
                              title:
                              "Rank is secondary — improvement is the goal.",
                              fontSize: 10,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),
                          ],
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const CommonBoldText(
                            title: "214",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),

                          const SizedBox(height: 3),

                          const CommonLightText(
                            title: "of 3,908",
                            fontSize: 10,
                            color: Color.fromRGBO(148, 163, 184, 1),
                          ),
                        ],
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
