
import "package:flutter/material.dart";
import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-whit-card.dart";
import "common/back_header.dart";
import "common/performance_trend_card.dart";
import "common/subject_performance_card.dart";
import "common/button.dart";
import 'revision.dart';


class PreparationView extends StatelessWidget {
  const PreparationView({super.key});

  final int preparationScore = 68;
  final int scoreIncrease = 6;

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
                  title: "Preparation report",
                  subtitle: "Last 6 weeks · BCS 46th",
                  subtitleColor: const Color.fromRGBO(100, 116, 139, 1),
                ),

                const SizedBox(height: 18),
                CommonWhitCard(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CommonLightText(
                        title: "Preparation score",
                        fontSize: 11,
                        color: Color.fromRGBO(100, 116, 139, 1),
                      ),

                      const SizedBox(height: 5),
                      Row(
                        children: [
                          CommonBoldText(
                            title: "$preparationScore",
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                          ),

                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: CommonLightText(
                              title: "/100",
                              fontSize: 13,
                              color: Color.fromRGBO(148, 163, 184, 1),
                            ),
                          ),

                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(236, 247, 241, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: CommonBoldText(
                              title: "↑ $scoreIncrease this week",
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(25, 122, 85, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 7),
                      const CommonLightText(
                        title:
                        "Built from mock scores, practice accuracy, syllabus coverage and revision consistency.",
                        fontSize: 11,
                        height: 1.4,
                        color: Color.fromRGBO(100, 116, 139, 1),
                      ),
                    ],
                  ),
                ),

                const PerformanceTrendCard(
                  scores: [52, 61, 57, 70, 76, 88],
                  description:
                  "Your last two mocks are your best two. Accuracy is rising faster than speed.",
                ),

                const SizedBox(height: 24),
                const CommonLightText(
                  title: "SUBJECT PERFORMANCE",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.96,
                ),
                const SizedBox(height: 10),
                SubjectPerformanceCard(
                  subjects: [
                    {"name": "বাংলা", "score": 84},
                    {"name": "Bangladesh Affairs", "score": 79},
                    {"name": "English", "score": 66},
                    {"name": "Mathematics", "score": 48},
                  ],
                ),


                const SizedBox(height: 24),
                const CommonLightText(
                  title: "Needs work → act now",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.96,
                ),

                const SizedBox(height: 12),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Revision(),),);
                  },
                child:  CommonWhitCard(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 7,
                              children: [
                                const CommonBoldText(
                                  title: "Math · Interest",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),

                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 7,
                                    vertical: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(253, 240, 238, 1,
                                    ),
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                  child: const CommonBoldText(
                                    title: "! 41%",
                                    fontSize: 10,
                                    color: Color.fromRGBO(150, 48, 38, 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const CommonLightText(
                              title: "Appeared in 4 of your last 5 mocks",
                              fontSize: 12,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      CommonActionButton(
                        title: "Practise 10",
                        textColor: Color.fromRGBO(255, 255, 255, 1),
                        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                        buttonWidth: 110,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),),

                const SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Revision(),),);
                  },
                child:  CommonWhitCard(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 7,
                              children: [
                                const CommonBoldText(
                                  title: "English . Preposition",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),

                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 7,
                                    vertical: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(253, 240, 238, 1,
                                    ),
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                  child: const CommonBoldText(
                                    title: "improving 58%",
                                    fontSize: 10,
                                    color: Color.fromRGBO(138, 96, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const CommonLightText(
                              title: "Appeared in 4 of your last 5 mocks",
                              fontSize: 12,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      CommonActionButton(
                        title: "Practise 10",
                        textColor: Color.fromRGBO(255, 255, 255, 1),
                        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
                        buttonWidth: 110,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),),
                const SizedBox(height: 24),
                CommonLightText(title: "STRONG TOPICS", fontSize: 12,fontWeight: FontWeight.w600,letterSpacing: 0.96,),
                const SizedBox(height: 12,),

                const SizedBox(height: 24),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(236, 247, 241, 1),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: const CommonBoldText(
                        title: "✓ সন্ধি 92%",
                        fontSize: 12.5,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(20, 98, 71, 1),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(236, 247, 241, 1),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: const CommonBoldText(
                        title: "✓ মুক্তিযুদ্ধ 89%",
                        fontSize: 12.5,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(20, 98, 71, 1),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(236, 247, 241, 1),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: const CommonBoldText(
                        title: "✓ Synonyms 86%",
                        fontSize: 12.5,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(20, 98, 71, 1),
                      ),
                    ),
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
