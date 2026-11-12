
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";

class ReviewListView extends StatefulWidget {
  const ReviewListView({super.key});

  @override
  State<ReviewListView> createState() => _ReviewListViewState();
}

class _ReviewListViewState extends State<ReviewListView> {
  String selectedTab = "All";

  final List<Map<String, dynamic>> reviewItems = [
    {
      "type": "QUESTION",
      "category": "বাংলা ব্যাকরণ",
      "title": "‘সন্ধি’ ব্যাকরণের কোন অংশে আলোচিত হয়?",
      "tab": "Questions",
    },
    {
      "type": "NOTE",
      "category": "Math · Interest",
      "title":
      "Doubling in n years → tripling in 2n years (simple interest only).",
      "tab": "Notes",
    },
    {
      "type": "QUESTION",
      "category": "International Affairs",
      "title": "The headquarters of the WTO is located in —",
      "tab": "Questions",
    },
    {
      "type": "ARTICLE",
      "category": "Current Affairs · Economy",
      "title":
      "Budget 2026: education allocation and what examiners ask about it",
      "tab": "Article",
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredItems = reviewItems;
    if (selectedTab == "Questions") {
      filteredItems = reviewItems
          .where((item) => item["tab"] == "Questions")
          .toList();
    } else if (selectedTab == "Notes") {
      filteredItems = reviewItems
          .where((item) => item["tab"] == "Notes")
          .toList();
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 14),
                  child: Row(
                    children: [
                      const Expanded(
                        child: BackHeader(
                          title: "Review List",
                          subtitle: "86 saved questions & notes",
                          subtitleColor:
                          Color.fromRGBO(100, 116, 139, 1),
                        ),
                      ),

                      const SizedBox(width: 8),

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
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 18,
                            color: Color.fromRGBO(17, 24, 39, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Tabs and Review Cards

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      // Filter Tabs

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildTab("All", "86"),

                            const SizedBox(width: 8),

                            _buildTab("Questions", "61"),

                            const SizedBox(width: 8),

                            _buildTab("Notes", "25"),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Review List

                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: filteredItems.length,
                        itemBuilder: (context, index) {
                          final item = filteredItems[index];

                          Color badgeBackground =
                          const Color.fromRGBO(243, 245, 249, 1);

                          Color badgeText =
                          const Color.fromRGBO(71, 85, 105, 1);

                          if (item["type"] == "NOTE") {
                            badgeBackground =
                            const Color.fromRGBO(252, 245, 228, 1);

                            badgeText =
                            const Color.fromRGBO(138, 96, 0, 1);
                          }

                          return Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(
                              top: index == 0 ? 0 : 10,
                            ),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color:
                              const Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: const Color.fromRGBO(
                                  232, 234, 240, 1,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                // Category Row

                                Row(
                                  children: [
                                    Container(
                                      padding:
                                      const EdgeInsets.symmetric(
                                        horizontal: 7,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: badgeBackground,
                                        borderRadius:
                                        BorderRadius.circular(6),
                                      ),
                                      child: CommonLightText(
                                        title: item["type"]!,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: badgeText,
                                      ),
                                    ),

                                    const SizedBox(width: 8),

                                    Expanded(
                                      child: CommonLightText(
                                        title: item["category"]!,
                                        fontSize: 11,
                                        color: const Color.fromRGBO(
                                          148, 163, 184, 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 10),

                                // Card Title

                                CommonLightText(
                                  title: item["title"]!,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(
                                    17, 24, 39, 1,
                                  ),
                                  height: 1.55,
                                ),
                              ],
                            ),
                          );
                        },
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

  Widget _buildTab(String title, String count) {
    bool isSelected = selectedTab == title;

    return InkWell(
      onTap: () {
        setState(() {
          selectedTab = title;
        });
      },
      borderRadius: BorderRadius.circular(999),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 9,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromRGBO(11, 32, 51, 1)
              : const Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(999),
          border: Border.all(
            color: isSelected
                ? const Color.fromRGBO(11, 32, 51, 1)
                : const Color.fromRGBO(226, 230, 238, 1),
          ),
        ),
        child: Row(
          children: [
            CommonLightText(
              title: title,
              fontSize: 12.5,
              fontWeight: FontWeight.w600,
              color: isSelected
                  ? const Color.fromRGBO(255, 255, 255, 1)
                  : const Color.fromRGBO(71, 85, 105, 1),
            ),

            const SizedBox(width: 4),

            CommonLightText(
              title: count,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: isSelected
                  ? const Color.fromRGBO(255, 255, 255, 1)
                  : const Color.fromRGBO(71, 85, 105, 1),
            ),
          ],
        ),
      ),
    );
  }
}
