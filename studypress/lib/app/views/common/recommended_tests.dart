
import "package:flutter/material.dart";

class RecommendedTests extends StatelessWidget {
  const RecommendedTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromRGBO(232, 234, 240, 1),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          RecommendedTestItem(
            icon: Icons.pie_chart_outline,
            title: "Math · Interest & Percentage",
            badge: "weak",
            badgeColor: const Color.fromRGBO(253, 240, 238, 1),
            badgeTextColor: const Color.fromRGBO(150, 48, 38, 1),
            description: "20 questions · 15 min · chapter mock",
            buttonTitle: "Start",
          ),

          RecommendedTestItem(
            icon: Icons.article_outlined,
            title: "Full Model Test 11",
            badge: "paused 84/200",
            badgeColor: const Color.fromRGBO(252, 245, 228, 1),
            badgeTextColor: const Color.fromRGBO(138, 96, 0, 1),
            description: "200 questions · 120 min · resume where you left",
            buttonTitle: "Resume",
            isResume: true,
          ),

          RecommendedTestItem(
            title: "বাংলা ব্যাকরণ · সন্ধি + সমাস",
            description: "30 questions · 20 min · after your reading",
            buttonTitle: "Start",
            textIcon: "ফ",
          ),

          RecommendedTestItem(
            icon: Icons.emoji_events_outlined,
            title: "BCS 45th Preliminary (previous)",
            description: "200 questions · 120 min · job test",
            buttonTitle: "Start",
            isLast: true,
          ),
        ],
      ),
    );
  }
}

class RecommendedTestItem extends StatelessWidget {
  final IconData? icon;
  final String? textIcon;

  final String title;
  final String? badge;
  final Color? badgeColor;
  final Color? badgeTextColor;

  final String description;
  final String buttonTitle;

  final bool isResume;
  final bool isLast;

  const RecommendedTestItem({
    super.key,
    this.icon,
    this.textIcon,
    required this.title,
    this.badge,
    this.badgeColor,
    this.badgeTextColor,
    required this.description,
    required this.buttonTitle,
    this.isResume = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(
          bottom: BorderSide(
            color: Color.fromRGBO(238, 240, 245, 1),
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(243, 245, 249, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: textIcon != null
                ? Text(
              textIcon!,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(11, 32, 51, 1),
              ),
            )
                : Icon(
              icon,
              size: 23,
              color: const Color.fromRGBO(11, 32, 51, 1),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 8,
                  runSpacing: 5,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                        letterSpacing: -0.2175,
                        color: Color.fromRGBO(17, 23, 31, 1),
                      ),
                    ),

                    if (badge != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: badgeColor,
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: Text(
                          badge!,
                          style: TextStyle(
                            fontSize: 10.5,
                            fontWeight: FontWeight.w700,
                            height: 1,
                            color: badgeTextColor,
                          ),
                        ),
                      ),
                  ],
                ),

                const SizedBox(height: 6),

                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    height: 1.35,
                    color: Color.fromRGBO(100, 116, 139, 1),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: isResume
                  ? const Color.fromRGBO(240, 174, 18, 1)
                  : const Color.fromRGBO(11, 32, 51, 1),
              borderRadius: BorderRadius.circular(13),
              boxShadow: isResume
                  ? const [
                BoxShadow(
                  color: Color.fromRGBO(176, 120, 0, 0.25),
                  offset: Offset(0, 7),
                  blurRadius: 15,
                  spreadRadius: -9,
                ),
              ]
                  : [],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  buttonTitle,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    height: 1,
                    color: isResume
                        ? const Color.fromRGBO(17, 24, 39, 1)
                        : Colors.white,
                  ),
                ),

                const SizedBox(width: 7),

                Icon(
                  Icons.chevron_right,
                  size: 14,
                  color: isResume ? Colors.black : Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
