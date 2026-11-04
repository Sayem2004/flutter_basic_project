import "package:flutter/material.dart";
import "common-whit-card.dart";
import "boldText.dart";

class SyllabusCoverage extends StatelessWidget {
  const SyllabusCoverage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWhitCard(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonBoldText(
                title: "Syllabus coverage",
                fontSize: 13.5,
                color: const Color.fromRGBO(17, 24, 39, 1),
              ),
              CommonBoldText(
                title: "41%",
                fontSize: 13,
                color: const Color.fromRGBO(232, 165, 0, 1),
              ),
            ],
          ),

          const SizedBox(height: 12),

          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: SizedBox(
              height: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 41,
                    child: Container(
                      color: const Color.fromRGBO(11, 32, 51, 1),
                    ),
                  ),
                  Expanded(
                    flex: 14,
                    child: Container(
                      color: const Color.fromRGBO(232, 165, 0, 1),
                    ),
                  ),
                  Expanded(
                    flex: 45,
                    child: Container(
                      color: const Color.fromRGBO(238, 240, 245, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 14),

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonBoldText(title: "41%", fontSize: 15),
                      const SizedBox(height: 5),
                      CommonBoldText(
                        title: "Read",
                        fontSize: 10.5,
                        color: const Color.fromRGBO(148, 163, 184, 1),
                      ),
                    ],
                  ),

                  const SizedBox(width: 26),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonBoldText(title: "14%", fontSize: 15),
                      const SizedBox(height: 5),
                      CommonBoldText(
                        title: "In progress",
                        fontSize: 10.5,
                        color: const Color.fromRGBO(148, 163, 184, 1),
                      ),
                    ],
                  ),

                  const SizedBox(width: 26),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonBoldText(title: "9", fontSize: 15),
                      const SizedBox(height: 5),
                      CommonBoldText(
                        title: "Subjects",
                        fontSize: 10.5,
                        color: const Color.fromRGBO(148, 163, 184, 1),
                      ),
                    ],
                  ),
                ],
              ),

              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(243, 245, 249, 1),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: const Icon(
                  Icons.account_balance_outlined,
                  size: 18,
                  color: Color.fromRGBO(11, 32, 51, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}