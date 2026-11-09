import "package:flutter/material.dart";

import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-whit-card.dart";

class ChapterDetails extends StatefulWidget {
  const ChapterDetails({
    super.key,
    required this.chapterName,
    required this.chapterNumber,
  });

  final String chapterName;
  final int chapterNumber;

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  final int readProgress = 62;
  final String practisedQuestions = "18/46";
  final int accuracy = 72;

  String selectedMode = "Read";
  bool isBookmarked = false;

  final List<Map<String, dynamic>> topics = [
    {"title": "সন্ধির প্রকারভেদ", "status": "completed"},
    {"title": "স্বরসন্ধি", "status": "completed"},
    {"title": "ব্যঞ্জনসন্ধি", "status": "inProgress"},
    {"title": "বিসর্গসন্ধি", "status": "notStarted"},
    {"title": "নিপাতনে সিদ্ধ সন্ধি", "status": "notStarted"},
  ];

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
                // Header
                Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color.fromRGBO(226, 230, 238, 1),
                        ),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.chevron_left,
                          size: 20,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonBoldText(
                            title: widget.chapterName,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(17, 24, 39, 1),
                          ),

                          const SizedBox(height: 3),

                          CommonLightText(
                            title:
                                "বাংলা ব্যাকরণ · Chapter ${widget.chapterNumber}",
                            fontSize: 11.5,
                            color: const Color.fromRGBO(100, 116, 139, 1),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color.fromRGBO(226, 230, 238, 1),
                        ),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            isBookmarked = !isBookmarked;
                          });
                        },
                        icon: Icon(
                          isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                          size: 18,
                          color: const Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Chapter Statistics
                CommonWhitCard(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CommonLightText(
                                  title: "Read",
                                  fontSize: 11.5,
                                  color: Color.fromRGBO(100, 116, 139, 1),
                                ),

                                const SizedBox(height: 6),

                                CommonBoldText(
                                  title: "$readProgress%",
                                  fontSize: 18,
                                  color: const Color.fromRGBO(17, 24, 39, 1),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 1,
                            height: 38,
                            color: const Color.fromRGBO(241, 243, 247, 1),
                          ),

                          const SizedBox(width: 22),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CommonLightText(
                                  title: "Practised",
                                  fontSize: 11.5,
                                  color: Color.fromRGBO(100, 116, 139, 1),
                                ),

                                const SizedBox(height: 6),

                                CommonBoldText(
                                  title: practisedQuestions,
                                  fontSize: 18,
                                  color: const Color.fromRGBO(17, 24, 39, 1),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 1,
                            height: 38,
                            color: const Color.fromRGBO(241, 243, 247, 1),
                          ),

                          const SizedBox(width: 22),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CommonLightText(
                                  title: "Accuracy",
                                  fontSize: 11.5,
                                  color: Color.fromRGBO(100, 116, 139, 1),
                                ),

                                const SizedBox(height: 6),

                                CommonBoldText(
                                  title: "$accuracy%",
                                  fontSize: 18,
                                  color: const Color.fromRGBO(17, 24, 39, 1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Read and Practise Buttons
                      const SizedBox(height: 18),

                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedMode = "Read";
                                });
                              },
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: selectedMode == "Read"
                                      ? const Color.fromRGBO(11, 32, 51, 1)
                                      : const Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: selectedMode == "Read"
                                        ? const Color.fromRGBO(11, 32, 51, 1)
                                        : const Color.fromRGBO(
                                            226,
                                            230,
                                            238,
                                            1,
                                          ),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: CommonBoldText(
                                  title: "Read",
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w600,
                                  color: selectedMode == "Read"
                                      ? const Color.fromRGBO(255, 255, 255, 1)
                                      : const Color.fromRGBO(11, 32, 51, 1),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedMode = "Practise";
                                });
                              },
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                padding: const EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  color: selectedMode == "Practise"
                                      ? const Color.fromRGBO(11, 32, 51, 1)
                                      : const Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: selectedMode == "Practise"
                                        ? const Color.fromRGBO(11, 32, 51, 1)
                                        : const Color.fromRGBO(
                                            226,
                                            230,
                                            238,
                                            1,
                                          ),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: CommonBoldText(
                                  title: "Practise",
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w600,
                                  color: selectedMode == "Practise"
                                      ? const Color.fromRGBO(255, 255, 255, 1)
                                      : const Color.fromRGBO(11, 32, 51, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Topics Heading
                const SizedBox(height: 24),

                const CommonLightText(
                  title: "TOPICS",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.96,
                  color: Color.fromRGBO(100, 116, 139, 1),
                ),

                const SizedBox(height: 4),

                // Topics List
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: topics.length,
                  itemBuilder: (context, index) {
                    final topic = topics[index];

                    final String status = topic["status"];

                    final bool isCompleted = status == "completed";
                    final bool isInProgress = status == "inProgress";
                    final bool isLast = index == topics.length - 1;

                    return InkWell(
                      onTap: () {
                        // Topic navigation will be added later.
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: isLast
                                  ? const Color.fromRGBO(249, 251, 255, 1)
                                  : const Color.fromRGBO(238, 240, 245, 1),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            CommonLightText(
                              title: "${index + 1}".padLeft(2, "0"),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(148, 163, 184, 1),
                            ),

                            const SizedBox(width: 12),

                            Expanded(
                              child: CommonBoldText(
                                title: topic["title"],
                                fontSize: 14.5,
                                fontWeight: isInProgress
                                    ? FontWeight.w600
                                    : FontWeight.w500,
                                color: const Color.fromRGBO(17, 24, 39, 1),
                              ),
                            ),

                            if (isCompleted)
                              const CommonLightText(
                                title: "Read",
                                fontSize: 11.5,
                                color: Color.fromRGBO(20, 98, 71, 1),
                              ),

                            if (isInProgress)
                              const CommonBoldText(
                                title: "Resume",
                                fontSize: 11.5,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(150, 105, 10, 1),
                              ),

                            if (!isCompleted && !isInProgress)
                              const Icon(
                                Icons.chevron_right,
                                size: 19,
                                color: Color.fromRGBO(148, 163, 184, 1),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),

                // Previous Questions Card
                const SizedBox(height: 20),

                InkWell(
                  onTap: () {
                    // Previous questions navigation will be added later.
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(252, 245, 228, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonBoldText(
                                title: "Previous questions from this chapter",
                                fontSize: 14,
                                color: const Color.fromRGBO(92, 66, 0, 1),
                              ),

                              const SizedBox(height: 4),

                              CommonLightText(
                                title: "46 questions · BCS 38th–45th",
                                fontSize: 12,
                                color: const Color.fromRGBO(138, 96, 0, 1),
                              ),
                            ],
                          ),
                        ),

                        const Icon(
                          Icons.chevron_right,
                          color: Color.fromRGBO(138, 96, 0, 1),
                          size: 20,
                        ),
                      ],
                    ),
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
