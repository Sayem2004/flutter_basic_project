import "package:flutter/material.dart";
import "boldText.dart";
import "lightText.dart";

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;

  final IconData? icon;
  final Color iconBackground;
  final Color iconColor;

  final bool isUnread;
  final bool showDot;
  final bool showDivider;

  const NotificationItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon,
    this.iconBackground = const Color.fromRGBO(243, 245, 249, 1),
    this.iconColor = const Color.fromRGBO(11, 32, 51, 1),
    this.isUnread = false,
    this.showDot = false,
    this.showDivider = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: showDivider
            ? const Border(
          bottom: BorderSide(
            color: Color.fromRGBO(238, 240, 245, 1),
          ),
        )
            : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Optional Icon
          if (icon != null)
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: iconBackground,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                icon,
                size: 20,
                color: iconColor,
              ),
            ),

          if (icon != null)
            const SizedBox(width: 13),

          // Notification Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isUnread)
                  CommonBoldText(
                    title: title,
                    fontSize: 13.5,
                    height: 1.45,
                    letterSpacing: -0.135,
                  ),

                if (!isUnread)
                  CommonLightText(
                    title: title,
                    fontSize: 13.5,
                    height: 1.45,
                    letterSpacing: -0.135,
                    color: const Color.fromRGBO(71, 85, 105, 1),
                  ),

                const SizedBox(height: 7),

                CommonLightText(
                  title: subtitle,
                  fontSize: 11,
                  color: const Color.fromRGBO(148, 163, 184, 1),
                ),
              ],
            ),
          ),

          // Optional Unread Dot
          if (showDot)
            Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.only(top: 6),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 165, 0, 1),
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}