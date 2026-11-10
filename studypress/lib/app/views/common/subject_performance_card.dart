import "package:flutter/material.dart";
import "boldText.dart";

class SubjectPerformanceCard extends StatelessWidget {
  final List<Map<String, dynamic>> subjects;

  const SubjectPerformanceCard({super.key, required this.subjects});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        border: Border.all(color: const Color.fromRGBO(232, 234, 240, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          for (int i = 0; i < subjects.length; i++)
            Padding(
              padding: EdgeInsets.only(
                bottom: i == subjects.length - 1 ? 0 : 15,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonBoldText(
                        title: subjects[i]["name"],
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                      ),

                      CommonBoldText(
                        title: "${subjects[i]["score"]}%",
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: _getScoreColor(subjects[i]["score"]),
                      ),
                    ],
                  ),

                  const SizedBox(height: 9),

                  Container(
                    height: 6,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(238, 240, 245, 1),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: subjects[i]["score"] / 100,
                      child: Container(
                        decoration: BoxDecoration(
                          color: _getScoreColor(subjects[i]["score"]),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Color _getScoreColor(int score) {
    if (score >= 75) {
      return const Color.fromRGBO(25, 122, 85, 1);
    }

    if (score >= 60) {
      return const Color.fromRGBO(192, 122, 24, 1);
    }

    return const Color.fromRGBO(185, 58, 47, 1);
  }
}
