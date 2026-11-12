
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  int currentQuestion = 0;
  int? selectedAnswer;
  bool isSubmitted = false;
  bool isBookmarked = false;

  final List<Map<String, dynamic>> questions = [
    {
      "subject": "Mathematics · Interest",
      "question":
      "A sum of money doubles in 8 years at simple interest. In how many years will it triple?",
      "options": [
        "12 years",
        "16 years",
        "20 years",
        "24 years",
      ],
      "answer": 1,
      "explanation":
      "If a sum doubles in 8 years, the interest equals the principal in 8 years. To triple, the interest must be twice the principal. Therefore, it will take 16 years.",
    },
    {
      "subject": "Bangladesh Affairs",
      "question": "পদ্মা বহুমুখী সেতুর মূল সেতুর দৈর্ঘ্য কত?",
      "options": [
        "৫.৫৮ কিলোমিটার",
        "৬.১৫ কিলোমিটার",
        "৭.২০ কিলোমিটার",
        "৪.৮০ কিলোমিটার",
      ],
      "answer": 1,
      "explanation":
      "পদ্মা সেতুর মূল সেতুর দৈর্ঘ্য ৬.১৫ কিলোমিটার এবং এর প্রস্থ ১৮.১৮ মিটার।",
    },
  ];

  void selectAnswer(int index) {
    if (isSubmitted) return;

    setState(() {
      selectedAnswer = index;
    });
  }

  void submitAnswer() {
    if (selectedAnswer == null) return;

    setState(() {
      isSubmitted = true;
    });
  }

  void nextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
        selectedAnswer = null;
        isSubmitted = false;
        isBookmarked = false;
      });
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestion];
    final options = question["options"] as List<String>;
    final correctAnswer = question["answer"] as int;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 12),
              child: Column(
                children: [
                  BackHeader(
                    title:
                    "Question ${currentQuestion + 1} of ${questions.length}",
                    subtitle: question["subject"],
                    subtitleColor:
                    const Color.fromRGBO(100, 116, 139, 1),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: LinearProgressIndicator(
                            value:
                            (currentQuestion + 1) / questions.length,
                            minHeight: 3,
                            backgroundColor:
                            const Color.fromRGBO(238, 240, 245, 1),
                            valueColor:
                            const AlwaysStoppedAnimation<Color>(
                              Color.fromRGBO(11, 32, 51, 1),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 12),

                      InkWell(
                        onTap: () {
                          setState(() {
                            isBookmarked = !isBookmarked;
                          });
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color:
                            const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color:
                              const Color.fromRGBO(226, 230, 238, 1),
                            ),
                          ),
                          child: Icon(
                            isBookmarked
                                ? Icons.bookmark
                                : Icons.bookmark_border,
                            size: 17,
                            color:
                            const Color.fromRGBO(71, 85, 105, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(22, 26, 22, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonBoldText(
                      title: question["question"],
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(17, 24, 39, 1),
                      height: 1.6,
                    ),

                    const SizedBox(height: 24),

                    Column(
                      children: List.generate(options.length, (index) {
                        bool isSelected = selectedAnswer == index;
                        bool isCorrect = index == correctAnswer;

                        Color borderColor =
                        const Color.fromRGBO(232, 234, 240, 1);
                        Color backgroundColor =
                        const Color.fromRGBO(255, 255, 255, 1);
                        Color letterBackground =
                        const Color.fromRGBO(243, 245, 249, 1);
                        Color letterColor =
                        const Color.fromRGBO(71, 85, 105, 1);

                        if (isSubmitted && isCorrect) {
                          borderColor =
                          const Color.fromRGBO(20, 128, 91, 1);
                          backgroundColor =
                          const Color.fromRGBO(239, 249, 244, 1);
                          letterBackground =
                          const Color.fromRGBO(20, 128, 91, 1);
                          letterColor =
                          const Color.fromRGBO(255, 255, 255, 1);
                        } else if (isSubmitted && isSelected) {
                          borderColor =
                          const Color.fromRGBO(192, 55, 45, 1);
                          backgroundColor =
                          const Color.fromRGBO(253, 241, 239, 1);
                          letterBackground =
                          const Color.fromRGBO(192, 55, 45, 1);
                          letterColor =
                          const Color.fromRGBO(255, 255, 255, 1);
                        } else if (isSelected) {
                          borderColor =
                          const Color.fromRGBO(11, 32, 51, 1);
                          backgroundColor =
                          const Color.fromRGBO(244, 247, 250, 1);
                        }

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 11),
                          child: InkWell(
                            onTap: () => selectAnswer(index),
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: borderColor,
                                  width: 1.2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: letterBackground,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      String.fromCharCode(65 + index),
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: letterColor,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(width: 13),

                                  Expanded(
                                    child: CommonLightText(
                                      title: options[index],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                        17, 24, 39, 1,
                                      ),
                                      height: 1.55,
                                    ),
                                  ),

                                  if (isSubmitted && isSelected)
                                    CommonLightText(
                                      title: isCorrect
                                          ? "Correct"
                                          : "Your answer",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: isCorrect
                                          ? const Color.fromRGBO(
                                          20, 98, 71, 1)
                                          : const Color.fromRGBO(
                                          150, 48, 38, 1),
                                    ),

                                  if (isSubmitted &&
                                      isCorrect &&
                                      !isSelected)
                                    const CommonLightText(
                                      title: "Correct",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color:
                                      Color.fromRGBO(20, 98, 71, 1),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),

                    if (isSubmitted) ...[
                      const SizedBox(height: 10),

                      Row(
                        children: [
                          Icon(
                            selectedAnswer == correctAnswer
                                ? Icons.check_circle
                                : Icons.error,
                            size: 17,
                            color: selectedAnswer == correctAnswer
                                ? const Color.fromRGBO(20, 128, 91, 1)
                                : const Color.fromRGBO(192, 55, 45, 1),
                          ),

                          const SizedBox(width: 7),

                          CommonLightText(
                            title: selectedAnswer == correctAnswer
                                ? "Correct"
                                : "Not quite",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: selectedAnswer == correctAnswer
                                ? const Color.fromRGBO(20, 128, 91, 1)
                                : const Color.fromRGBO(192, 55, 45, 1),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(
                            color:
                            const Color.fromRGBO(226, 230, 238, 1),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CommonLightText(
                              title: "EXPLANATION",
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),

                            const SizedBox(height: 9),

                            CommonLightText(
                              title: question["explanation"],
                              fontSize: 12,
                              color:
                              const Color.fromRGBO(71, 85, 105, 1),
                              height: 1.7,
                            ),

                            const SizedBox(height: 12),

                            Wrap(
                              spacing: 7,
                              runSpacing: 7,
                              children: [
                                "Ask AI Mentor",
                                "Add to Review",
                                "Report",
                              ].map((title) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 7,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                        243, 245, 249, 1),
                                    borderRadius:
                                    BorderRadius.circular(8),
                                  ),
                                  child: CommonLightText(
                                    title: title,
                                    fontSize: 9.5,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(
                                        71, 85, 105, 1),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border(
                  top: BorderSide(
                    color: Color.fromRGBO(238, 240, 245, 1),
                  ),
                ),
              ),
              child: InkWell(
                onTap: selectedAnswer == null
                    ? null
                    : isSubmitted
                    ? nextQuestion
                    : submitAnswer,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: double.infinity,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: selectedAnswer == null
                        ? const Color.fromRGBO(238, 240, 245, 1)
                        : const Color.fromRGBO(240, 165, 0, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: CommonBoldText(
                    title: selectedAnswer == null
                        ? "Select an answer"
                        : isSubmitted
                        ? currentQuestion == questions.length - 1
                        ? "Finish session"
                        : "Next question"
                        : "Check answer",
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: selectedAnswer == null
                        ? const Color.fromRGBO(148, 163, 184, 1)
                        : const Color.fromRGBO(11, 32, 51, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
