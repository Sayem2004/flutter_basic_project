
import "package:flutter/material.dart";

import "common/boldText.dart";
import "common/lightText.dart";
import "common/button.dart";
import "common/back_header.dart";
import "common/common-whit-card.dart";

class Revision extends StatefulWidget {
  const Revision({super.key});

  @override
  State<Revision> createState() => _RevisionState();
}

class _RevisionState extends State<Revision> {
  int selectedAnswer = -1;
  int currentIndex = 0;

  final List<Map<String, dynamic>> questions = [
    {
      "question": "‘সন্ধি’ ব্যাকরণের কোন অংশে আলোচিত হয়?",
      "options": [
        "ধ্বনিতত্ত্বে",
        "রূপতত্ত্বে",
        "বাক্যতত্ত্বে",
        "অর্থতত্ত্বে",
      ],
      "correctAnswer": 0,
      "explanation":
      "সন্ধি দুটি ধ্বনির মিলনজাত পরিবর্তন, তাই এটি ধ্বনিতত্ত্ব (Phonology) অংশে আলোচিত হয়। রূপতত্ত্বে আলোচিত হয় শব্দ গঠন ও প্রত্যয়।",
      "successMessage":
      "One more correct session moves this to Mastered.",
    },
    {
      "question": "বাংলা ভাষার মূল উপাদান কী?",
      "options": [
        "বর্ণ",
        "ধ্বনি",
        "শব্দ",
        "বাক্য",
      ],
      "correctAnswer": 1,
      "explanation":
      "ধ্বনি হলো ভাষার মূল উপাদান। ধ্বনির সাহায্যে শব্দ গঠিত হয়।",
      "successMessage":
      "Great! Keep practicing to master this topic.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final question = questions[currentIndex];
    final options = question["options"] as List<String>;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
          child: Column(
            children: [
              BackHeader(
                title: "Revision · ${currentIndex + 1} of ${questions.length}",
                subtitle: "Wrong one before · stage 2",
                doneText: "$currentIndex done",
              ),

              const SizedBox(height: 26),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonBoldText(
                        title: question["question"],
                        fontSize: 19,
                        color: const Color.fromRGBO(17, 24, 39, 1),
                        height: 1.6,
                      ),

                      const SizedBox(height: 22),

                      Column(
                        children: List.generate(options.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 11),
                            child: CommonWhitCard(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Radio<int>(
                                    value: index,
                                    groupValue: selectedAnswer,
                                    activeColor:
                                    const Color.fromRGBO(25, 122, 85, 1),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedAnswer = value!;
                                      });
                                    },
                                  ),

                                  CommonBoldText(
                                    title: String.fromCharCode(65 + index),
                                    fontSize: 13,
                                    color: const Color.fromRGBO(71, 85, 105, 1),
                                  ),

                                  const SizedBox(width: 13),

                                  Expanded(
                                    child: CommonLightText(
                                      title: options[index],
                                      fontSize: 15.5,
                                      color: const Color.fromRGBO(17, 24, 39, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),

                      if (selectedAnswer != -1) ...[
                        const SizedBox(height: 9),

                        CommonWhitCard(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonBoldText(
                                title: "WHY THIS IS THE ANSWER",
                                fontSize: 11,
                                color: const Color.fromRGBO(100, 116, 139, 1),
                              ),

                              const SizedBox(height: 9),

                              CommonLightText(
                                title: question["explanation"],
                                fontSize: 14.5,
                                color: const Color.fromRGBO(31, 41, 55, 1),
                                height: 1.75,
                              ),
                            ],
                          ),
                        ),

                        if (selectedAnswer == question["correctAnswer"])
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 12),
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(236, 247, 241, 1),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: CommonLightText(
                              title: question["successMessage"],
                              fontSize: 12.5,
                              color: const Color.fromRGBO(20, 98, 71, 1),
                            ),
                          ),
                      ],
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              CommonActionButton(
                title: currentIndex == questions.length - 1
                    ? "Finish"
                    : "Next question",
                onPressed: () {
                  if (selectedAnswer == -1) {
                    return;
                  }

                  if (currentIndex < questions.length - 1) {
                    setState(() {
                      currentIndex++;
                      selectedAnswer = -1;
                    });
                  } else {
                    Navigator.pop(context);
                  }
                },
                buttonWidth: double.infinity,
                margin: EdgeInsets.zero,
                backgroundColor: const Color.fromRGBO(240, 154, 0, 1),
                textColor: const Color.fromRGBO(11, 32, 51, 1),
                showIcon: false,
                showGradient: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
