import "package:flutter/material.dart";
import "boldText.dart";
import "lightText.dart";
import "common-whit-card.dart";

class AccountItem {
  final String title;
  final String subtitle;
  final IconData icon;

  const AccountItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

class AccountSection extends StatelessWidget {
  final List<AccountItem> items;

  const AccountSection({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return CommonWhitCard(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        children: List.generate(items.length, (index) {
          final item = items[index];

          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border: index == items.length - 1
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
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(243, 245, 249, 1),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Icon(
                    item.icon,
                    size: 20,
                    color: const Color.fromRGBO(11, 32, 51, 1),
                  ),
                ),

                const SizedBox(width: 13),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonBoldText(
                        title: item.title,
                        fontSize: 14,
                        height: 1.2,
                      ),

                      const SizedBox(height: 4),

                      CommonLightText(
                        title: item.subtitle,
                        fontSize: 11.5,
                        height: 1.35,
                      ),
                    ],
                  ),
                ),

                const Icon(
                  Icons.chevron_right,
                  size: 16,
                  color: Color.fromRGBO(148, 163, 184, 1),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}