
import "package:flutter/material.dart";

import "common/boldText.dart";
import "common/lightText.dart";
import "common/button.dart";
import "common/back_header.dart";

class Revision extends StatefulWidget {
  const Revision({super.key});

  @override
  State<Revision> createState() => _RevisionState();
}

class _RevisionState extends State<Revision> {
  int selectedAnswer = -1;

  bool isSubmitted = false;

  final int correctAnswer = 0;

  final List<String> options = [
    "ধ্বনিতত্ত্ব",
    "রূপতত্ত্ব",
    "বাক্যতত্ত্ব",
    "অর্থতত্ত্ব",
  ];

  final String question =
      "‘সন্ধি’ ব্যাকরণের কোন অংশে আলোচিত হয়?";

  final String explanation =
      "সন্ধি ধ্বনির মিলন ও পরিবর্তনের সঙ্গে সম্পর্কিত। "
      "তাই সন্ধি বাংলা ব্যাকরণের ধ্বনিতত্ত্ব অংশে আলোচিত হয়।";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
              child: Column(
                children: [
                  BackHeader(
                    title: "Question 1 of 20",
                    subtitle: "বাংলা ব্যাকরণ · সন্ধি",
                    doneText: "1 done",
                  ),

                  const SizedBox(height: 12),

                  // Progress Indicator
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: LinearProgressIndicator(
                      value: 0.05,
                      minHeight: 3,
                      backgroundColor:
                      const Color.fromRGBO(238, 240, 245, 1),
                      valueColor: const AlwaysStoppedAnimation(
                        Color.fromRGBO(11, 32, 51, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Question and Options
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(22, 26, 22, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Question
                    CommonBoldText(
                      title: question,
                      fontSize: 20,
                      height: 1.6,
                      color: const Color.fromRGBO(17, 24, 39, 1),
                    ),

                    const SizedBox(height: 24),

                    // Answer Options
                    ...List.generate(options.length, (index) {
                      final bool isSelected =
                          selectedAnswer == index;

                      final bool isCorrectOption =
                          correctAnswer == index;

                      Color borderColor =
                      const Color.fromRGBO(232, 234, 240, 1);

                      Color backgroundColor =
                      const Color.fromRGBO(255, 255, 255, 1);

                      Color radioColor =
                      const Color.fromRGBO(11, 32, 51, 1);

                      if (isSubmitted && isCorrectOption) {
                        borderColor =
                        const Color.fromRGBO(20, 140, 95, 1);

                        backgroundColor =
                        const Color.fromRGBO(240, 249, 244, 1);

                        radioColor =
                        const Color.fromRGBO(20, 140, 95, 1);
                      } else if (isSubmitted && isSelected) {
                        borderColor =
                        const Color.fromRGBO(210, 55, 45, 1);

                        backgroundColor =
                        const Color.fromRGBO(255, 244, 242, 1);

                        radioColor =
                        const Color.fromRGBO(210, 55, 45, 1);
                      } else if (isSelected) {
                        borderColor =
                        const Color.fromRGBO(11, 32, 51, 1);
                      }

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 11),
                        child: InkWell(
                          onTap: isSubmitted
                              ? null
                              : () {
                            setState(() {
                              selectedAnswer = index;
                            });
                          },
                          borderRadius: BorderRadius.circular(14),
                          child: Container(
                            width: double.infinity,
                            constraints: const BoxConstraints(
                              minHeight: 55,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: borderColor,
                                width: isSelected || isSubmitted ? 1.5 : 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Radio<int>(
                                  value: index,
                                  groupValue: selectedAnswer,
                                  activeColor: radioColor,
                                  onChanged: isSubmitted
                                      ? null
                                      : (value) {
                                    setState(() {
                                      selectedAnswer = value!;
                                    });
                                  },
                                ),

                                Expanded(
                                  child: CommonLightText(
                                    title: options[index],
                                    fontSize: 15.5,
                                    height: 1.55,
                                    color: const Color.fromRGBO(
                                      17, 24, 39, 1,
                                    ),
                                  ),
                                ),

                                if (isSubmitted && isCorrectOption)
                                  const Text(
                                    "Correct",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(
                                        20, 98, 71, 1,
                                      ),
                                    ),
                                  ),

                                if (isSubmitted &&
                                    isSelected &&
                                    !isCorrectOption)
                                  const Text(
                                    "Your answer",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(
                                        150, 48, 38, 1,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),

                    // Answer Result
                    if (isSubmitted) ...[
                      const SizedBox(height: 12),

                      Row(
                        children: [
                          Icon(
                            isCorrectAnswer()
                                ? Icons.check_circle
                                : Icons.cancel,
                            size: 16,
                            color: isCorrectAnswer()
                                ? const Color.fromRGBO(20, 140, 95, 1)
                                : const Color.fromRGBO(190, 55, 45, 1),
                          ),

                          const SizedBox(width: 7),

                          Text(
                            isCorrectAnswer() ? "Correct" : "Not quite",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: isCorrectAnswer()
                                  ? const Color.fromRGBO(20, 98, 71, 1)
                                  : const Color.fromRGBO(190, 55, 45, 1),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      // Explanation Card
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color.fromRGBO(226, 230, 238, 1),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CommonBoldText(
                              title: "EXPLANATION",
                              fontSize: 10,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),

                            const SizedBox(height: 8),

                            CommonLightText(
                              title: explanation,
                              fontSize: 12,
                              height: 1.6,
                              color: const Color.fromRGBO(31, 41, 55, 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),

            // Bottom Button
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 14, 20, 22),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Color.fromRGBO(238, 240, 245, 1),
                  ),
                ),
              ),
              child: CommonActionButton(
                title: isSubmitted
                    ? "Next question"
                    : "Check answer",
                onPressed: () {
                  if (!isSubmitted) {
                    if (selectedAnswer == -1) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Please select an answer"),
                        ),
                      );
                      return;
                    }

                    setState(() {
                      isSubmitted = true;
                    });
                  }
                },
                buttonWidth: double.infinity,
                margin: EdgeInsets.zero,
                backgroundColor:
                const Color.fromRGBO(240, 154, 0, 1),
                textColor:
                const Color.fromRGBO(11, 32, 51, 1),
                showIcon: false,
                showGradient: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isCorrectAnswer() {
    return selectedAnswer == correctAnswer;
  }
}
