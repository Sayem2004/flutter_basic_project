
import "package:flutter/material.dart";
import "common-whit-card.dart";

class SubjectList extends StatelessWidget {
  const SubjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWhitCard(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
      child: Column(
        children: [
          const SubjectItem(
            shortName: "বাং",
            title: "বাংলা ভাষা ও সাহিত্য",
            details: "12 chapters · 8 done",
            percentage: "67%",
          ),

          const Divider(
            height: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),

          const SubjectItem(
            shortName: "EN",
            title: "English Language & Literature",
            details: "14 chapters · 5 done",
            percentage: "36%",
          ),

          const Divider(
            height: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),

          const SubjectItem(
            shortName: "MA",
            title: "Mathematical Reasoning",
            details: "10 chapters · 3 done",
            percentage: "28%",
            isWeak: true,
          ),

          const Divider(
            height: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),

          const SubjectItem(
            shortName: "BD",
            title: "Bangladesh Affairs",
            details: "8 chapters · 6 done",
            percentage: "74%",
          ),

          const Divider(
            height: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),

          const SubjectItem(
            shortName: "INT",
            title: "International Affairs",
            details: "6 chapters · 2 done",
            percentage: "31%",
          ),
          const Divider(
            height: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),
          const SubjectItem(
            shortName: "ICT",
            title: "Science & ICT",
            details: "7 chapters · 4 done",
            percentage: "52%",
          ),
        ],
      ),
    );
  }
}

class SubjectItem extends StatelessWidget {
  final String shortName;
  final String title;
  final String details;
  final String percentage;
  final bool isWeak;

  const SubjectItem({
    super.key,
    required this.shortName,
    required this.title,
    required this.details,
    required this.percentage,
    this.isWeak = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: isWeak
                  ? const Color.fromRGBO(253, 240, 238, 1)
                  : const Color.fromRGBO(243, 245, 249, 1),
              borderRadius: BorderRadius.circular(14),
            ),
            alignment: Alignment.center,
            child: Text(
              shortName,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: isWeak
                    ? const Color.fromRGBO(150, 48, 38, 1)
                    : const Color.fromRGBO(11, 32, 51, 1),
              ),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                    color: Color.fromRGBO(17, 24, 39, 1),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        details,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                          color: Color.fromRGBO(100, 116, 139, 1),
                        ),
                      ),
                    ),

                    if (isWeak) ...[
                      const SizedBox(width: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(253, 240, 238, 1),
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: const Text("! weak",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            height: 1,
                            color: Color.fromRGBO(150, 48, 38, 1),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          Text(
            percentage,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(71, 85, 105, 1),
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.chevron_right,
            size: 16,
            color: Color.fromRGBO(148, 163, 184, 1),
          ),
        ],
      ),
    );
  }
}
