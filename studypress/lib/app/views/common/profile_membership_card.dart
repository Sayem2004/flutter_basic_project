
import "package:flutter/material.dart";
import "boldText.dart";
import "lightText.dart";
import "common-black-card.dart";

class ProfileMembershipCard extends StatelessWidget {
  const ProfileMembershipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonBlackCard(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromRGBO(232, 165, 0, 0.5),
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/profile.png",
                        width: 64,
                        height: 64,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Positioned(
                    right: -3,
                    top: -3,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(232, 165, 0, 1),
                      ),
                      child: const Icon(
                        Icons.workspace_premium,
                        size: 12,
                        color: Color.fromRGBO(11, 32, 51, 1),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 15),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonBoldText(
                      title: "Tanvir Ahmed",
                      fontSize: 18,
                      color: Colors.white,
                    ),

                    SizedBox(height: 9),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.workspace_premium,
                          size: 12,
                          color: Color.fromRGBO(232, 165, 0, 1),
                        ),

                        SizedBox(width: 6),
                        CommonLightText(
                          title: "Premium Member",
                          fontSize: 10.5,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(232, 165, 0, 1),
                        ),
                      ],
                    ),
                    SizedBox(height: 9),
                    CommonLightText(
                      title: "Expires 12 Nov 2026",
                      fontSize: 11.5,
                      color: Color.fromRGBO(169, 188, 203, 1),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 9,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 0.18),
                  ),
                  color: const Color.fromRGBO(255, 255, 255, 0.06),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.edit_outlined,
                      size: 13,
                      color: Colors.white,
                    ),

                    SizedBox(width: 6),
                    CommonLightText(
                      title: "Edit",
                      fontSize: 11.5,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.12),
              ),
              color: const Color.fromRGBO(255, 255, 255, 0.04),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.diamond_outlined,
                        size: 16,
                        color: Color.fromRGBO(232, 165, 0, 1),
                      ),

                      SizedBox(width: 8),
                      Flexible(
                        child: CommonLightText(
                          title: "Unlimited\nMocks",
                          fontSize: 10.5,
                          height: 1.25,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(232, 237, 242, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 26,
                  color: const Color.fromRGBO(255, 255, 255, 0.12),
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bar_chart,
                        size: 16,
                        color: Color.fromRGBO(232, 165, 0, 1),
                      ),

                      SizedBox(width: 8),

                      Flexible(
                        child: CommonLightText(
                          title: "Detailed\nAnalytics",
                          fontSize: 10.5,
                          height: 1.25,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(232, 237, 242, 1),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 1,
                  height: 26,
                  color: const Color.fromRGBO(255, 255, 255, 0.12),
                ),

                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 16,
                        color: Color.fromRGBO(232, 165, 0, 1),
                      ),

                      SizedBox(width: 8),
                      Flexible(
                        child: CommonLightText(
                          title: "Priority\nSupport",
                          fontSize: 10.5,
                          height: 1.25,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(232, 237, 242, 1),
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
    );
  }
}
