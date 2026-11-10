import "package:flutter/material.dart";
import "boldText.dart";
import "lightText.dart";

class PerformanceTrendCard extends StatelessWidget {
  final List<int> scores;
  final String description;

  const PerformanceTrendCard({
    super.key,
    required this.scores,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 14),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        border: Border.all(color: const Color.fromRGBO(232, 234, 240, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CommonBoldText(
                title: "Performance trend",
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
              ),

              const CommonLightText(
                title: "mock score",
                fontSize: 11.5,
                color: Color.fromRGBO(100, 116, 139, 1),
              ),
            ],
          ),
          const SizedBox(height: 18),
          SizedBox(
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (int i = 0; i < scores.length; i++)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 104 * scores[i] / 100,                            decoration: BoxDecoration(
                              color: i == scores.length - 1
                                  ? const Color.fromRGBO(232, 165, 0, 1)
                                  : i == scores.length - 2
                                  ? const Color.fromRGBO(11, 32, 51, 1)
                                  : const Color.fromRGBO(238, 240, 245, 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          const SizedBox(height: 7),
                          CommonLightText(
                            title: "W${i + 1}",
                            fontSize: 10,
                            color: const Color.fromRGBO(148, 163, 184, 1),
                            fontWeight: i == scores.length - 1
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 14),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 14),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Color.fromRGBO(241, 243, 247, 1)),
              ),
            ),
            child: CommonLightText(
              title: description,
              fontSize: 12.5,
              height: 1.5,
              color: const Color.fromRGBO(107, 122, 136, 1),
            ),
          ),
        ],
      ),
    );
  }
}
