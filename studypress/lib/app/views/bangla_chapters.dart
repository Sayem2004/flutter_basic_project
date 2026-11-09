
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-whit-card.dart";
import "chapter_details.dart";

class BanglaChapters extends StatelessWidget {
  const BanglaChapters({super.key});

  final int completedChapters = 8;
  final int totalChapters = 12;

  static const List<Map<String, dynamic>> chapters = [
    {
      "title": "ভাষা ও ব্যাকরণ পরিচিতি",
      "status": "completed",
      "subtitle": "Read · practised 40/40",
    },
    {
      "title": "সন্ধি",
      "status": "inProgress",
      "subtitle": "In progress · 62% read",
      "progress": 62,
    },
    {
      "title": "সমাস",
      "status": "notStarted",
      "subtitle": "Not started · 34 questions",
    },
    {
      "title": "কারক ও বিভক্তি",
      "status": "notStarted",
      "subtitle": "Not started",
      "weakInMocks": true,
    },
    {
      "title": "প্রকৃতি ও প্রত্যয়",
      "status": "notStarted",
      "subtitle": "Not started · 28 questions",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final double progress = completedChapters / totalChapters;
    final int percentage = (progress * 100).round();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              const BackHeader(
                title: "বাংলা ভাষা ও সাহিত্য",
                subtitle: "BCS 46th · 12 chapters",
              ),

              const SizedBox(height: 14),

              CommonWhitCard(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CommonLightText(
                            title: "Roadmap progress",
                            fontSize: 12,
                            color: Color.fromRGBO(100, 116, 139, 1),
                          ),

                          const SizedBox(height: 6),

                          CommonBoldText(
                            title:
                            "$completedChapters of $totalChapters chapters",
                            fontSize: 20,
                            color: const Color.fromRGBO(17, 24, 39, 1),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 52,
                      height: 52,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 52,
                            height: 52,
                            child: CircularProgressIndicator(
                              value: progress,
                              strokeWidth: 4,
                              backgroundColor:
                              const Color.fromRGBO(238, 240, 245, 1),
                              valueColor:
                              const AlwaysStoppedAnimation<Color>(
                                Color.fromRGBO(11, 32, 51, 1),
                              ),
                            ),
                          ),

                          Container(
                            width: 38,
                            height: 38,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: CommonBoldText(
                              title: "$percentage%",
                              fontSize: 12,
                              color: const Color.fromRGBO(17, 24, 39, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              const CommonLightText(
                title: "CHAPTERS",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.96,
                color: Color.fromRGBO(100, 116, 139, 1),
              ),

              const SizedBox(height: 4),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: chapters.length,
                  itemBuilder: (context, index) {
                    final chapter = chapters[index];

                    final String status = chapter["status"];
                    final bool isCompleted = status == "completed";
                    final bool isInProgress = status == "inProgress";
                    final bool isWeak = chapter["weakInMocks"] == true;
                    final bool isLast = index == chapters.length - 1;

                    Color circleBackground =
                    const Color.fromRGBO(255, 255, 255, 0);
                    Color circleBorder =
                    const Color.fromRGBO(203, 213, 225, 1);
                    Color titleColor =
                    const Color.fromRGBO(17, 24, 39, 1);
                    Color subtitleColor =
                    const Color.fromRGBO(148, 163, 184, 1);
                    Color rowBackground =
                    const Color.fromRGBO(249, 251, 255, 1);
                    FontWeight titleWeight = FontWeight.w600;
                    if (isCompleted) {
                      circleBackground =
                      const Color.fromRGBO(25, 122, 85, 1);
                      circleBorder =
                      const Color.fromRGBO(25, 122, 85, 1);
                      titleColor =
                      const Color.fromRGBO(71, 85, 105, 1);
                    }
                    if (isInProgress) {
                      circleBackground =
                      const Color.fromRGBO(252, 245, 228, 1);
                      circleBorder =
                      const Color.fromRGBO(232, 165, 0, 1);
                      titleWeight = FontWeight.w600;
                      subtitleColor =
                      const Color.fromRGBO(150, 105, 10, 1);
                      rowBackground =
                      const Color.fromRGBO(247, 248, 250, 1);
                    }
                    return InkWell(
                      onTap: () {
                        if (chapter["title"] == "সন্ধি") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChapterDetails(
                                chapterName: "সন্ধি",
                                chapterNumber: 2,
                              ),
                            ),
                          );
                        }

                        if (chapter["title"] == "ভাষা ও ব্যাকরণ পরিচিতি") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChapterDetails(chapterName: "সন্ধি", chapterNumber: 2),
                            ),
                          );
                        }
                      },
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: isInProgress ? 10 : 2,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: rowBackground,
                          borderRadius: BorderRadius.circular(12),
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
                            Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: circleBackground,
                                shape: BoxShape.circle,
                                border: isCompleted
                                    ? null
                                    : Border.all(
                                  color: circleBorder,
                                  width: isInProgress ? 1.8 : 1.2,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: isCompleted
                                  ? const Icon(
                                Icons.check,
                                size: 15,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              )
                                  : null,
                            ),

                            const SizedBox(width: 13),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonBoldText(
                                    title: chapter["title"],
                                    fontSize: 14.5,
                                    fontWeight: titleWeight,
                                    color: titleColor,
                                  ),

                                  const SizedBox(height: 4),

                                  if (isWeak)
                                    Row(
                                      children: [
                                        CommonLightText(
                                          title: chapter["subtitle"],
                                          fontSize: 11.5,
                                          color: subtitleColor,
                                        ),

                                        const SizedBox(width: 7),

                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 7,
                                            vertical: 3,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                253, 240, 238, 1),
                                            borderRadius:
                                            BorderRadius.circular(999),
                                          ),
                                          child: const CommonLightText(
                                            title: "! weak in mocks",
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 48, 38, 1),
                                          ),
                                        ),
                                      ],
                                    )
                                  else
                                    CommonLightText(
                                      title: chapter["subtitle"],
                                      fontSize: 11.5,
                                      color: subtitleColor,
                                    ),
                                ],
                              ),
                            ),

                            if (isInProgress)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(11, 32, 51, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const CommonBoldText(
                                  title: "Resume",
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontWeight: FontWeight.w600,
                                ),
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

            ],
          ),
        ),
      ),
    );
  }
}
