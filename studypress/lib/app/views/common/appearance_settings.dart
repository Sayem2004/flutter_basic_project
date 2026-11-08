
import "package:flutter/material.dart";

import "boldText.dart";
import "lightText.dart";
import "button.dart";

void showAppearanceSettings(BuildContext context) {
  String selectedAppearance = "Light";

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(22, 10, 22, 28),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(26),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(11, 32, 51, 0.3),
                  offset: Offset(0, -18),
                  blurRadius: 46,
                  spreadRadius: -18,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 38,
                  height: 4,
                  margin: const EdgeInsets.fromLTRB(0, 6, 0, 16),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(226, 230, 238, 1),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                const CommonBoldText(
                  title: "Appearance",
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),

                const SizedBox(height: 16),

                // Appearance Options

                ...[
                  [
                    "Light",
                    "Warm white canvas · default",
                  ],
                  [
                    "Dark",
                    "Applies across every screen",
                  ],
                  [
                    "Follow system",
                    "Match your phone setting",
                  ],
                ].map((option) {
                  bool isSelected = selectedAppearance == option[0];

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAppearance = option[0];
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: isSelected
                              ? const Color.fromRGBO(11, 32, 51, 1)
                              : const Color.fromRGBO(232, 234, 240, 1),
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonBoldText(
                                  title: option[0],
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2,
                                ),

                                const SizedBox(height: 4),

                                CommonLightText(
                                  title: option[1],
                                  fontSize: 12,
                                  color: const Color.fromRGBO(
                                    100,
                                    116,
                                    139,
                                    1,
                                  ),
                                  height: 1.3,
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? const Color.fromRGBO(11, 32, 51, 1)
                                  : const Color.fromRGBO(243, 245, 249, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            alignment: Alignment.center,
                            child: isSelected
                                ? const Icon(
                              Icons.check,
                              size: 15,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            )
                                : null,
                          ),
                        ],
                      ),
                    ),
                  );
                }),

                const SizedBox(height: 10),

                CommonActionButton(
                  title: "Done",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  backgroundColor: const Color.fromRGBO(22, 50, 75, 1),
                  textColor: const Color.fromRGBO(255, 255, 255, 1),
                  showIcon: false,
                  showGradient: true,
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
