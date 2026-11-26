import 'package:flutter/material.dart';
import 'common/lightText.dart';
import 'common/boldText.dart';
import 'common/common-whit-card.dart';
import 'common/button.dart';
import 'today_view.dart';
import 'bangla.dart';


class Diagnostic extends StatelessWidget {
  const Diagnostic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 251, 255, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(226, 230, 238, 1),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 18,
                      color: Color.fromRGBO(17, 24, 39, 1),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(252, 245, 228, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.auto_awesome,
                      size: 26,
                      color: Color.fromRGBO(150, 105, 10, 1),
                    ),
                  ),
                ),
                SizedBox(height: 18,),
                CommonBoldText(title: "Find your starting point", fontSize: 26,height: 1.25,letterSpacing: -0.24,),
                SizedBox(height: 10,),
                CommonLightText(title: "A 20-question diagnostic sets your preparation score, weak topics and first week's plan. Takes about 12 minutes.", fontSize: 15,height: 1.55,color: Color.fromRGBO(107, 122, 136, 1),),
                SizedBox(height: 24,),
                CommonWhitCard(child:
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CommonLightText(
                          title: "Questions",
                          fontSize: 14,
                          height: 1,
                          color: Color.fromRGBO(71, 85, 105, 1),
                        ),
                        const CommonBoldText(
                          title: "20 · mixed subjects",
                          fontSize: 14,
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),
                    Container(
                      height: 1,
                      color: const Color.fromRGBO(241, 243, 247, 1),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CommonLightText(
                          title: "Time",
                          fontSize: 14,
                          height: 1,
                          color: Color.fromRGBO(71, 85, 105, 1),
                        ),
                        const CommonBoldText(
                          title: "12 minutes",
                          fontSize: 14,
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),
                    Container(
                      height: 1,
                      color: const Color.fromRGBO(241, 243, 247, 1),
                    ),

                    const SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CommonLightText(
                          title: "Marking",
                          fontSize: 14,
                          height: 1,
                          color: Color.fromRGBO(71, 85, 105, 1),
                        ),
                        const CommonBoldText(
                          title: "No negative marking",
                          fontSize: 14,
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ],
                    ),
                  ],
                ),

                ),
                SizedBox(height: 16,),
                CommonLightText(title: "Skipping is fine — we'll start you on the standard BCS 46th roadmap and adjust as you practise.", fontSize: 13,height: 1.5,),
                
                

              ],
            ),


        ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonActionButton(
                title: "Start diagnostic",
                buttonWidth: double.infinity,
                margin: EdgeInsets.zero,
                backgroundColor: const Color.fromRGBO(240, 174, 18, 1),
                textColor: const Color.fromRGBO(17, 24, 39, 1),
                showIcon: false,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Revision(),),);
                },
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TodayView(),),);
                },
                borderRadius: BorderRadius.circular(8),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: CommonLightText(
                    title: "Skip for now",
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
