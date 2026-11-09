
import "package:flutter/material.dart";

import "boldText.dart";
import "lightText.dart";

class BackHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? doneText;
  final Color titleColor;
  final Color subtitleColor;
  final Color doneTextColor;

  const BackHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.doneText,
    this.titleColor = const Color.fromRGBO(11, 32, 51, 1),
    this.subtitleColor = const Color.fromRGBO(150, 105, 10, 1),
    this.doneTextColor = const Color.fromRGBO(100, 116, 139, 1),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(10),
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
              color: Color.fromRGBO(11, 32, 51, 1),
            ),
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonBoldText(
                title: title,
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: titleColor,
              ),

              if (subtitle != null) ...[
                const SizedBox(height: 3),

                CommonLightText(
                  title: subtitle!,
                  fontSize: 13.5,
                  color: subtitleColor,                ),
              ],
            ],
          ),
        ),

        if (doneText != null)
          CommonLightText(
            title: doneText!,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: doneTextColor,
          ),
      ],
    );
  }
}
