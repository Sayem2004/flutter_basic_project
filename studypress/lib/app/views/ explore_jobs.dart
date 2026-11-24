import 'package:flutter/material.dart';
import 'common/back_header.dart';
import 'common/button.dart';
import "common/boldText.dart";
import "common/lightText.dart";

class ExploreJobsView extends StatefulWidget {

  const ExploreJobsView({super.key});

  @override
  State<ExploreJobsView> createState() => _ExploreJobsViewState();
}

class _ExploreJobsViewState extends State<ExploreJobsView> {
  String selectedCategory = "Govt.";

  final List<String> categories = [
    "Govt.",
    "Bank",
    "NGO",
    "Abroad",
    "Saved 6",
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(249, 251, 255, 1),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                       Expanded(
                        child: BackHeader(
                          title: "Explore Jobs",
                          subtitle: "218 circulars · 12 closing this week",
                          subtitleColor: Color.fromRGBO(100, 116, 139, 1),
                        ),
                      ),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(
                            color: const Color.fromRGBO(226, 230, 238, 1),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.search,
                          size: 18,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                  SizedBox(
                    height: 44,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 8);
                      },
                      itemBuilder: (context, index) {
                        final category = categories[index];
                        final isSelected = selectedCategory == category;

                        return CommonActionButton(
                          title: category,
                          buttonWidth: null,
                          margin: EdgeInsets.zero,
                          showIcon: false,
                          showGradient: false,
                          backgroundColor: isSelected
                              ? const Color.fromRGBO(11, 32, 51, 1)
                              : const Color.fromRGBO(255, 255, 255, 1),
                          textColor: isSelected
                              ? Colors.white
                              : const Color.fromRGBO(71, 85, 105, 1),
                          onPressed: () {
                            setState(() {
                              selectedCategory = category;
                            });
                          },
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: [
                        _buildJobItem(
                          title: "Assistant Director (General)",
                          organization: "Bangladesh Bank · 45 posts",
                          deadline: "Deadline 21 Aug 2026 · 8 days left",
                          deadlineColor: const Color.fromRGBO(150, 48, 38, 1),
                        ),

                        _buildJobItem(
                          title: "Officer (Cash) — Combined 5 Banks",
                          organization: "Bankers' Selection Committee · 1,200 posts",
                          deadline: "Deadline 03 Sep 2026 · saved",
                          deadlineColor: const Color.fromRGBO(138, 96, 0, 1),
                          isSaved: true,
                        ),

                        _buildJobItem(
                          title: "Assistant Teacher (Primary)",
                          organization: "DPE · district-wise",
                          deadline: "Deadline 15 Sep 2026",
                          deadlineColor: const Color.fromRGBO(100, 116, 139, 1),
                        ),

                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 18),
                          padding: const EdgeInsets.all(17),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(232, 234, 240, 1),
                            ),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CommonBoldText(
                                title: "Study Abroad",
                                fontSize: 14.5,
                                height: 1.2,
                              ),

                              const SizedBox(height: 6),

                              const CommonLightText(
                                title:
                                "Country guidance, eligibility basics and an enquiry form. Only workflows supported by StudyPress are exposed here.",
                                fontSize: 12.5,
                                height: 1.5,
                                color: Color.fromRGBO(100, 116, 139, 1),
                              ),

                              const SizedBox(height: 13),

                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  border: Border.all(
                                    color: const Color.fromRGBO(226, 230, 238, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: const Center(
                                  child: CommonBoldText(
                                    title: "Send an enquiry",
                                    fontSize: 13.5,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),












                ],
              ),


            )
        ),
      ),
    );
  }
}


Widget _buildJobItem({
  required String title,
  required String organization,
  required String deadline,
  required Color deadlineColor,
  bool isSaved = false,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 2,
      vertical: 15,
    ),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color.fromRGBO(238, 240, 245, 1),
        ),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonBoldText(
                title: title,
                fontSize: 14.5,
                height: 1.3,
              ),

              const SizedBox(height: 5),

              CommonLightText(
                title: organization,
                fontSize: 12,
                height: 1.35,
                color: const Color.fromRGBO(100, 116, 139, 1),
              ),

              const SizedBox(height: 7),

              CommonLightText(
                title: deadline,
                fontSize: 11.5,
                height: 1,
                color: deadlineColor,
              ),
            ],
          ),
        ),

        const SizedBox(width: 13),

        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: isSaved
                ? const Color.fromRGBO(252, 245, 228, 1)
                : const Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(
              color: isSaved
                  ? const Color.fromRGBO(232, 165, 0, 1)
                  : const Color.fromRGBO(226, 230, 238, 1),
            ),
            borderRadius: BorderRadius.circular(9),
          ),
          child: Icon(
            isSaved ? Icons.bookmark : Icons.bookmark_border,
            size: 16,
            color: isSaved
                ? const Color.fromRGBO(150, 105, 10, 1)
                : const Color.fromRGBO(71, 85, 105, 1),
          ),
        ),
      ],
    ),
  );
}

