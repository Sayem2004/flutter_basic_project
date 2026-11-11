import "package:flutter/material.dart";

import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-black-card.dart";
import "common/common-whit-card.dart";
import "common/button.dart";

class VocabularyView extends StatelessWidget {
  const VocabularyView({super.key});

  Widget levelRow({
    required IconData icon,
    required Color iconColor,
    required Color iconBackground,
    required String title,
    required String subtitle,
    required Color subtitleColor,
    bool showDivider = false,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: iconBackground,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(icon, size: 20, color: iconColor),
                ),

                const SizedBox(width: 13),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonBoldText(
                        title: title,
                        fontSize: 13.5,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                      ),

                      const SizedBox(height: 5),

                      CommonLightText(
                        title: subtitle,
                        fontSize: 11.5,
                        height: 1.3,
                        color: subtitleColor,
                      ),
                    ],
                  ),
                ),

                const Icon(
                  Icons.chevron_right,
                  size: 16,
                  color: Color.fromRGBO(148, 163, 184, 1),
                ),
              ],
            ),
          ),
        ),

        if (showDivider)
          const Divider(
            height: 1,
            thickness: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 34,
                      height: 34,
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
                          size: 20,
                          color: Color.fromRGBO(11, 32, 51, 1),
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 11,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(226, 230, 238, 1),
                        ),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.warning_amber_rounded,
                            size: 13,
                            color: Color.fromRGBO(185, 58, 47, 1),
                          ),
                          SizedBox(width: 5),
                          CommonBoldText(
                            title: "Mistakes",
                            fontSize: 10.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                const CommonBoldText(
                  title: "Vocabulary",
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),

                const SizedBox(height: 4),
                const CommonLightText(
                  title: "Build your vocabulary one earned point at a time.",
                  fontSize: 11,
                  color: Color.fromRGBO(148, 163, 184, 1),
                ),
                const SizedBox(height: 12),

                CommonBlackCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CommonBoldText(
                            title: "LEVEL 2 · DEVELOPING",
                            fontSize: 10,
                            color: Color.fromRGBO(232, 165, 0, 1),
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.7,
                          ),
                          const CommonLightText(
                            title: "Correct +5 · Wrong -2",
                            fontSize: 9,
                            color: Color.fromRGBO(203, 213, 225, 1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CommonBoldText(
                            title: "315",
                            fontSize: 28,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w800,
                          ),
                          SizedBox(width: 5),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: CommonLightText(
                              title: "/ 500 points",
                              fontSize: 12,
                              color: Color.fromRGBO(203, 213, 225, 1),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const LinearProgressIndicator(
                          value: 0.63,
                          minHeight: 6,
                          backgroundColor: Color.fromRGBO(51, 65, 85, 1),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(232, 165, 0, 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonLightText(
                            title: "185 points to Level 3",
                            fontSize: 9.5,
                            color: Color.fromRGBO(203, 213, 225, 1),
                          ),

                          CommonBoldText(
                            title: "63% complete",
                            fontSize: 9.5,
                            color: Color.fromRGBO(232, 165, 0, 1),
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),

                      CommonActionButton(
                        title: "Continue practise",
                        icon: Icons.adjust,
                        showIcon: true,
                        showGradient: false,
                        buttonWidth: null,
                        margin: const EdgeInsets.only(top: 12),
                        backgroundColor: const Color.fromRGBO(232, 165, 0, 1),
                        textColor: const Color.fromRGBO(11, 32, 51, 1),
                        iconColor: const Color.fromRGBO(11, 32, 51, 1),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                CommonBoldText(
                  title: "Level journey",
                  fontSize: 16,
                  letterSpacing: -0.3,
                ),
                const SizedBox(height: 12),

                CommonWhitCard(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                  child: Column(
                    children: [
                      levelRow(
                        icon: Icons.check,
                        iconColor: const Color.fromRGBO(25, 122, 85, 1),
                        iconBackground: const Color.fromRGBO(236, 247, 241, 1),
                        title: "Level 1 · Foundation",
                        subtitle: "500 / 500",
                        subtitleColor: const Color.fromRGBO(148, 163, 184, 1),
                        showDivider: true,
                      ),

                      levelRow(
                        icon: Icons.adjust,
                        iconColor: const Color.fromRGBO(138, 96, 0, 1),
                        iconBackground: const Color.fromRGBO(252, 245, 228, 1),
                        title: "Level 2 · Developing",
                        subtitle: "315 / 500",
                        subtitleColor: const Color.fromRGBO(150, 105, 10, 1),
                        showDivider: true,
                      ),

                      levelRow(
                        icon: Icons.lock_outline,
                        iconColor: const Color.fromRGBO(148, 163, 184, 1),
                        iconBackground: const Color.fromRGBO(243, 245, 249, 1),
                        title: "Level 3 · Skilled",
                        subtitle: "Locked",
                        subtitleColor: const Color.fromRGBO(148, 163, 184, 1),
                        showDivider: true,
                      ),

                      levelRow(
                        icon: Icons.lock_outline,
                        iconColor: const Color.fromRGBO(148, 163, 184, 1),
                        iconBackground: const Color.fromRGBO(243, 245, 249, 1),
                        title: "Level 4 · Advanced",
                        subtitle: "Locked",
                        subtitleColor: const Color.fromRGBO(148, 163, 184, 1),
                        showDivider: true,
                      ),

                      levelRow(
                        icon: Icons.lock_outline,
                        iconColor: const Color.fromRGBO(148, 163, 184, 1),
                        iconBackground: const Color.fromRGBO(243, 245, 249, 1),
                        title: "Level 5 · Mastery",
                        subtitle: "Locked",
                        subtitleColor: const Color.fromRGBO(148, 163, 184, 1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                CommonBoldText(
                  title: "This week",
                  fontSize: 16,
                  letterSpacing: -0.3,
                ),
                const SizedBox(height: 12),

                Row(
                  children: [
                    Expanded(
                      child: CommonWhitCard(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CommonBoldText(title: "82%", fontSize: 17, letterSpacing: -0.36,),
                            const SizedBox(height: 6),
                            const CommonLightText(title: "Accuracy", fontSize: 11,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),

                    Expanded(
                      child: CommonWhitCard(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CommonBoldText(title: "+145", fontSize: 17, letterSpacing: -0.36,),
                            const SizedBox(height: 6),
                            const CommonLightText(title: "Points", fontSize: 11,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CommonWhitCard(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CommonBoldText(title: "86", fontSize: 17, letterSpacing: -0.36,),
                            const SizedBox(height: 6),
                            const CommonLightText(title: "Words", fontSize: 11,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                CommonWhitCard(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(253, 240, 238, 1),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: const Icon(Icons.bar_chart, size: 19,
                          color: Color.fromRGBO(150, 48, 38, 1),
                        ),
                      ),

                      const SizedBox(width: 13),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonBoldText(title: "Needs practice · Synonyms", fontSize: 13.5, fontWeight: FontWeight.w700, height: 1.2,
                            ),

                            SizedBox(height: 5),
                            CommonLightText(title: "68% accuracy · practise this area", fontSize: 11.5, height: 1.3,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.chevron_right, size: 16,
                        color: Color.fromRGBO(148, 163, 184, 1),
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
