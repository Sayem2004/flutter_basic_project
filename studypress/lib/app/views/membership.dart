import 'package:flutter/material.dart';
import 'common/back_header.dart';
import 'common/common-black-card.dart';
import 'common/lightText.dart';
import 'common/boldText.dart';
import 'common/button.dart';


class Membership extends StatelessWidget {
  const Membership({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(

          child: Padding(
              padding: const EdgeInsetsGeometry.fromLTRB(20,10, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackHeader(title: "Membership",
                  subtitle: "Plan, billing and card",
                ),
                const SizedBox(height: 22,),
                CommonBlackCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonLightText(title: "CURRENT PLAN",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                  color: Color.fromRGBO(232, 165, 0, 1),
                                ),
                                const SizedBox(height: 11,),
                                CommonBoldText(
                                    title: "Premium . 12 months",
                                    fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 0.12),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const CommonLightText(
                                title: "Active",
                                fontSize: 10,
                                color: Color.fromRGBO(180, 205, 220, 1),
                              ),
                            ),

                          ],
                        ),
                        const SizedBox(height: 10,),
                        CommonLightText(title: "Expires 12 Nov 2026 · 91 days left",
                          fontSize: 13,
                          height: 1.5,
                          color: Color.fromRGBO(169, 188, 203, 1),
                        ),
                        Container(
                          width: double.infinity,
                          height: 5,
                          margin: const EdgeInsets.only(top: 14),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 0.14),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: FractionallySizedBox(
                            widthFactor: 0.70,
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 5,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(232, 165, 0, 1),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2,),
                        CommonActionButton(
                            title: "Renew for ৳ 2,400", onPressed: (){}
                        ),

                      ],

                    )
                ),
                const SizedBox(height: 24,),
                CommonLightText(title: "INCLUDED", fontSize: 12,
                  fontWeight: FontWeight.w600 ,
                  letterSpacing: 1.5,
                ),

                const SizedBox(height: 12),

                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(25, 122, 85, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.check,
                            size: 13,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),

                        const SizedBox(width: 10),

                        const Expanded(
                          child: CommonLightText(
                            title: "All live model tests and full mocks",
                            fontSize: 13.5,
                            color: Color.fromRGBO(51, 65, 85, 1),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 11),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(25, 122, 85, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.check,
                            size: 13,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: CommonLightText(
                            title: "Complete syllabus reading and question banks",
                            fontSize: 13.5,
                            color: Color.fromRGBO(51, 65, 85, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 11),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(25, 122, 85, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.check,
                            size: 13,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),

                        const SizedBox(width: 10),

                        const Expanded(
                          child: CommonLightText(
                            title: "Revision engine, reports and CV Maker",
                            fontSize: 13.5,
                            color: Color.fromRGBO(51, 65, 85, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24,),
                CommonLightText(title: "BILLING HISTORY", fontSize: 12,
                fontWeight: FontWeight.w600,
                  letterSpacing: 0.96,
                ),
                const SizedBox(height: 4,),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                    vertical: 14,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(238, 240, 245, 1),
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonLightText(
                              title: "Premium 12 months",
                              fontSize: 13.5,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(17, 24, 39, 1),
                              height: 1.2,
                            ),

                            const SizedBox(height: 4),

                            CommonLightText(
                              title: "12 Nov 2025 · bKash",
                              fontSize: 11.5,
                              color: const Color.fromRGBO(148, 163, 184, 1),
                            ),
                          ],
                        ),
                      ),

                      CommonBoldText(
                        title: "৳ 2,400",
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(17, 24, 39, 1),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                    vertical: 14,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonLightText(
                              title: "Model test pack",
                              fontSize: 13.5,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(17, 24, 39, 1),
                              height: 1.2,
                            ),

                            const SizedBox(height: 4),

                            CommonLightText(
                              title: "04 Aug 2025 · card",
                              fontSize: 11.5,
                              color: const Color.fromRGBO(148, 163, 184, 1),
                            ),
                          ],
                        ),
                      ),

                      CommonBoldText(
                        title: "৳ 600",
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(17, 24, 39, 1),
                      ),
                    ],
                  ),
                ),




              ],
            ),


          ),
      ),
    );
  }
}
