
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-whit-card.dart";
import "common/button.dart";

class WeakTopicsRankView extends StatelessWidget {
  const WeakTopicsRankView({super.key});

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
                  title: "Weak topics & rank",
                  subtitle: "Recalculated after every mock",
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
                            CommonBoldText(title: "12", fontSize: 18, color: Color.fromRGBO(20, 98, 71, 1),),
                            SizedBox(height: 6),
                            CommonLightText(title: "STRONG", fontSize: 10.5, fontWeight: FontWeight.w600, color: Color.fromRGBO(44, 107, 84, 1),),
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
                            CommonBoldText(title: "5", fontSize: 18, color: Color.fromRGBO(138, 96, 0, 1),),
                            SizedBox(height: 6),
                            CommonLightText(title: "IMPROVING", fontSize: 10.5, fontWeight: FontWeight.w600, color: Color.fromRGBO(138, 96, 0, 1),),
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
                            CommonLightText(title: "NEEDS WORK", fontSize: 10.5, fontWeight: FontWeight.w600, color: Color.fromRGBO(150, 48, 38, 1),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                CommonLightText(title: "NEEDS WORK", fontSize: 12,fontWeight: FontWeight.w600,letterSpacing: 0.96, ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
