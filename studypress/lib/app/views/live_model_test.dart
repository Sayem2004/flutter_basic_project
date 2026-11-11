
import "package:flutter/material.dart";

import "common/boldText.dart";
import "common/lightText.dart";
import 'common/back_header.dart';
import 'common/common-whit-card.dart';
import 'common/button.dart';

class LiveModelTestView extends StatefulWidget {
  const LiveModelTestView({super.key});

  @override
  State<LiveModelTestView> createState() => _LiveModelTestViewState();
}

class _LiveModelTestViewState extends State<LiveModelTestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(7, 17, 29, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,8,20,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              BackHeader(
                title: "LIVE MODEL TEST",
                titleColor: Color.fromRGBO(232, 165, 0, 1),
              ),
              const SizedBox(height: 20,),
              CommonBoldText(title: "Full Model Test 12", fontSize: 26, color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w700,height: 1.25,letterSpacing: -0.24,),
              const SizedBox(height: 8,),
              CommonLightText(title: "BCS 46th Preliminary · half-length model paper", fontSize: 14,height: 1.5,color: Color.fromRGBO(143, 163, 180, 1),),
              const SizedBox(height: 22,),

              CommonWhitCard(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CommonLightText(title: "STARTS IN", fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 1.1,
                      color: Color.fromRGBO(143, 163, 180, 1),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const CommonBoldText(title: "02", fontSize: 34, color: Color.fromRGBO(232, 165, 0, 1),),
                        const SizedBox(width: 6),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 14),
                          child: CommonLightText(title: ":", fontSize: 28, color: Color.fromRGBO(44, 67, 88, 1),
                          ),
                        ),

                        const CommonBoldText(title: "14", fontSize: 34, color: Color.fromRGBO(232, 165, 0, 1),),
                        const SizedBox(width: 6),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 14),
                          child: CommonLightText(title: ":", fontSize: 28, color: Color.fromRGBO(44, 67, 88, 1),),
                        ),
                        const CommonBoldText(title: "08", fontSize: 34, color: Color.fromRGBO(232, 165, 0, 1),),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 42,
                          child: CommonLightText(title: "HRS", fontSize: 10, color: Color.fromRGBO(92, 114, 132, 1),),
                        ),
                        SizedBox(width: 25),
                        SizedBox(
                          width: 42,
                          child: CommonLightText(
                            title: "MIN",
                            fontSize: 10,
                            color: Color.fromRGBO(92, 114, 132, 1),
                          ),
                        ),
                        SizedBox(width: 25),
                        SizedBox(
                          width: 42,
                          child: CommonLightText(
                            title: "SEC",
                            fontSize: 10,
                            color: Color.fromRGBO(92, 114, 132, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const CommonLightText(
                      title: "Today · 9:00 PM (Asia/Dhaka)",
                      fontSize: 13,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(77,80, 71, 1),
                  borderRadius: BorderRadius.circular(18),
                ),
                clipBehavior: Clip.antiAlias,
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: 1.75,
                  children: [
                    CommonWhitCard(
                      padding: const EdgeInsets.all(16),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonLightText(
                            title: "Questions",
                            fontSize: 11.5,
                            color: Color.fromRGBO(92, 114, 132, 1),
                          ),
                          SizedBox(height: 7),
                          CommonBoldText(
                            title: "100",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(232, 237, 242, 1),
                          ),
                        ],
                      ),
                    ),

                    CommonWhitCard(
                      padding: const EdgeInsets.all(16),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonLightText(
                            title: "Duration",
                            fontSize: 11.5,
                            color: Color.fromRGBO(92, 114, 132, 1),
                          ),
                          SizedBox(height: 7),
                          CommonBoldText(
                            title: "90 min",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(232, 237, 242, 1),
                          ),
                        ],
                      ),
                    ),

                    CommonWhitCard(
                      padding: const EdgeInsets.all(16),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonLightText(title: "Marks", fontSize: 11.5,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                          SizedBox(height: 7),
                          CommonBoldText(
                            title: "100 · −0.5 neg.",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(232, 237, 242, 1),
                          ),
                        ],
                      ),
                    ),

                    CommonWhitCard(
                      padding: const EdgeInsets.all(16),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonLightText(
                            title: "Registered",
                            fontSize: 11.5,
                            color: Color.fromRGBO(92, 114, 132, 1),
                          ),
                          SizedBox(height: 7),
                          CommonBoldText(
                            title: "4,182",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(232, 237, 242, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24,),
              CommonLightText(title: "Syllabus covered", fontSize: 11,letterSpacing: 1.2,color: Color.fromRGBO(255, 255, 255, 1),),
              const SizedBox(height: 12,),

              const SizedBox(height: 24),

              const CommonLightText(
                title: "SYLLABUS COVERED",
                fontSize: 11,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.1,
                color: Color.fromRGBO(92, 114, 132, 1),
              ),

              const SizedBox(height: 12),
              Wrap(
                spacing: 7,
                runSpacing: 7,
                children: [
                  "বাংলা 20",
                  "English 20",
                  "Math 10",
                  "GK 30",
                  "ICT 10",
                  "Mental ability 10",
                ].map((subject) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(27, 50, 71, 1),
                      ),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: CommonLightText(
                      title: subject,
                      fontSize: 12.5,
                      color: const Color.fromRGBO(195, 210, 222, 1),
                    ),
                  );
                }).toList(),
              ),







            ],
          ),
        ),
      ),


      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.fromLTRB(22, 14, 22, 24),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(7, 17, 29, 1),
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(20, 40, 58, 1),
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonActionButton(
                title: "Enter waiting room",
                buttonWidth: double.infinity,
                margin: EdgeInsets.zero,
                backgroundColor: const Color.fromRGBO(232, 165, 0, 1),
                textColor: const Color.fromRGBO(7, 17, 29, 1),
                showGradient: true,
                onPressed: () {},
              ),

              InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: CommonLightText(
                    title: "Remind me before it starts",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(143, 163, 180, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
