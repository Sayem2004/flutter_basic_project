import 'package:flutter/material.dart';
import 'common/lightText.dart';
import 'common/boldText.dart';
import 'common/common-whit-card.dart';
import 'common/button.dart';
import 'today_view.dart';
import 'diagnostic.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 251, 255, 1),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 4,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(11, 32, 51, 1),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Container(
                          height: 4,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(226, 230, 238, 1),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Container(
                          height: 4,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(226, 230, 238, 1),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      const SizedBox(width: 6,),
                      CommonLightText(title: "Step 1 of 3", fontSize: 11,fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(100, 116, 139, 1),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),
                  const CommonBoldText(
                    title: "Which exam are you preparing for?", fontSize: 25,
                    height: 1.25, fontWeight: FontWeight.w700,letterSpacing: -0.24,
                    color: Color.fromRGBO(17, 24, 39, 1),
                  ),

                  const SizedBox(height: 8),
                  CommonLightText(title: "This sets your syllabus, mocks and daily plan. You can add more tracks later.",
                    fontSize: 14.5,
                    height: 1.5,
                    color: Color.fromRGBO(107, 122, 136, 1),
                  ),
                  SizedBox(height: 22,),
                  CommonWhitCard(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonBoldText(title: "BCS Preliminary", fontSize: 15,height: 1.2,),
                            SizedBox(height: 4,),
                            CommonLightText(title: "46th · 200 marks · most popular", fontSize: 12.5,height: 1.3,),
                          ],
                        ),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(11, 23, 51, 1),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Center(
                            child: Text("✓",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              color: Colors.white,
                            ),
                            ),
                          ),
                        )


                      ],
                    ),
                  ),


                  SizedBox(height: 12,),
                  CommonWhitCard(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonBoldText(title: "Bank Recruitment", fontSize: 15,height: 1.2,),
                            SizedBox(height: 4,),
                            CommonLightText(title: "Combined 5 Banks, BB Officer", fontSize: 12.5,height: 1.3,),
                          ],
                        ),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(243, 245, 249, 1),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Center(
                            child: Text("",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              color: Colors.white,
                            ),
                            ),
                          ),
                        )


                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  CommonWhitCard(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonBoldText(title: "Primary Teacher", fontSize: 15,height: 1.2,),
                            SizedBox(height: 4,),
                            CommonLightText(title: "DPE Assistant Teacher", fontSize: 12.5,height: 1.3,),
                          ],
                        ),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(243, 245, 249, 1),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Center(
                            child: Text("",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              color: Colors.white,
                            ),
                            ),
                          ),
                        )


                      ],
                    ),
                  ),SizedBox(height: 12,),
                  CommonWhitCard(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonBoldText(title: "NTRCA", fontSize: 15,height: 1.2,),
                            SizedBox(height: 4,),
                            CommonLightText(title: "School & college level", fontSize: 12.5,height: 1.3,),
                          ],
                        ),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(243, 245, 249, 1),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Center(
                            child: Text("",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              color: Colors.white,
                            ),
                            ),
                          ),
                        )


                      ],
                    ),
                  ),SizedBox(height: 12,),
                  CommonWhitCard(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonBoldText(title: "Govt. Jobs (Others)", fontSize: 15,height: 1.2,),
                            SizedBox(height: 4,),
                            CommonLightText(title: "Ministry, corporation, defence", fontSize: 12.5,height: 1.3,),
                          ],
                        ),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(243, 245, 249, 1),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Center(
                            child: Text("",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              color: Colors.white,
                            ),
                            ),
                          ),
                        )


                      ],
                    ),
                  ),





                ],
              ),

            )
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonActionButton(
                title: "Continue",
                buttonWidth: double.infinity,
                margin: EdgeInsets.zero,
                backgroundColor: const Color.fromRGBO(240, 174, 18, 1),
                textColor: const Color.fromRGBO(17, 24, 39, 1),
                showIcon: false,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Diagnostic(),),);
                },
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Diagnostic(),),);
                },
                borderRadius: BorderRadius.circular(8),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: CommonLightText(
                    title: "I'll decide later",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(100, 116, 139, 1),
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
