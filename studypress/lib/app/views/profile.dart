
import "package:flutter/material.dart";

import "common/button.dart";
import "common/boldText.dart";
import "common/lightText.dart";

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.chevron_left,
                          size: 22,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonBoldText(
                          title: "Profile",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                        SizedBox(height: 3),
                        CommonLightText(
                          title: "Personal, education and preferences",
                          fontSize: 11.5,
                          color: Color.fromRGBO(100, 116, 139, 1),
                          height: 1,
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  children: [
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(11, 32, 51, 1),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        "assets/images/profile.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 14),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonBoldText(
                            title: "Tanvir Ahmed",
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                            letterSpacing: -0.34,
                          ),
                          SizedBox(height: 5),
                          CommonLightText(
                            title: "tanvir.ahmed@email.com",
                            fontSize: 12.5,
                            height: 1.3,
                          ),
                        ],
                      ),
                    ),

                    CommonActionButton(
                      title: "Edit",
                      onPressed: () {},
                      buttonWidth: 60,
                      margin: EdgeInsets.zero,
                      backgroundColor: const Color.fromRGBO(205, 225, 235, 1),
                      textColor: const Color.fromRGBO(11, 32, 51, 1),
                      showIcon: false,
                      showGradient: false,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const CommonLightText(
                  title: "PERSONAL INFORMATION",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.96,
                  color: Color.fromRGBO(100, 116, 139, 1),
                  height: 1,
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(238, 240, 245, 1),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CommonLightText(
                          title: "Mobile",
                          fontSize: 13.5,
                          color: Color.fromRGBO(71, 85, 105, 1),
                          height: 1,
                        ),
                      ),
                      const CommonLightText(
                        title: "01712 345 678",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(17, 24, 39, 1),
                        height: 1,
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(238, 240, 245, 1),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CommonLightText(
                          title: "District",
                          fontSize: 13.5,
                          color: Color.fromRGBO(71, 85, 105, 1),
                          height: 1,
                        ),
                      ),
                      const CommonLightText(
                        title: "Dhaka",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(17, 24, 39, 1),
                        height: 1,
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CommonLightText(
                          title: "Date of birth",
                          fontSize: 13.5,
                          color: Color.fromRGBO(71, 85, 105, 1),
                          height: 1,
                        ),
                      ),
                      const CommonLightText(
                        title: "14 Mar 2001",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(17, 24, 39, 1),
                        height: 1,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                const CommonLightText(
                  title: "EDUCATION",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.96,
                  color: Color.fromRGBO(100, 116, 139, 1),
                  height: 1,
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(238, 240, 245, 1),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CommonLightText(
                          title: "Highest degree",
                          fontSize: 13.5,
                          color: Color.fromRGBO(71, 85, 105, 1),
                          height: 1,
                        ),
                      ),
                      const CommonLightText(
                        title: "BSc Economics",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(17, 24, 39, 1),
                        height: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CommonLightText(
                          title: "Institution",
                          fontSize: 13.5,
                          color: Color.fromRGBO(71, 85, 105, 1),
                          height: 1,
                        ),
                      ),
                      const CommonLightText(
                        title: "University of Dhaka",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(17, 24, 39, 1),
                        height: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const CommonLightText(
                  title: "PREPARATION PREFERENCES",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.96,
                  color: Color.fromRGBO(100, 116, 139, 1),
                  height: 1,
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(238, 240, 245, 1),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CommonLightText(
                          title: "Primary exam",
                          fontSize: 13.5,
                          color: Color.fromRGBO(71, 85, 105, 1),
                          height: 1,
                        ),
                      ),
                      const CommonLightText(
                        title: "BCS 46th",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(17, 24, 39, 1),
                        height: 1,
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.chevron_right,
                        size: 17,
                        color: Color.fromRGBO(148, 163, 184, 1),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(238, 240, 245, 1),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CommonLightText(
                          title: "Daily target",
                          fontSize: 13.5,
                          color: Color.fromRGBO(71, 85, 105, 1),
                          height: 1,
                        ),
                      ),
                      const CommonLightText(
                        title: "45 min · 40 questions",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(17, 24, 39, 1),
                        height: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CommonLightText(
                          title: "Language",
                          fontSize: 13.5,
                          color: Color.fromRGBO(71, 85, 105, 1),
                          height: 1,
                        ),
                      ),
                      const CommonLightText(
                        title: "বাংলা + English",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(17, 24, 39, 1),
                        height: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                const CommonLightText(
                  title: "SECURITY",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.96,
                  color: Color.fromRGBO(100, 116, 139, 1),
                  height: 1,
                ),
                const SizedBox(height: 4),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(238, 240, 245, 1),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CommonLightText(
                          title: "Change password",
                          fontSize: 13.5,
                          color: Color.fromRGBO(71, 85, 105, 1),
                          height: 1,
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        size: 17,
                        color: Color.fromRGBO(148, 163, 184, 1),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 2,
                  ),
                  child: const Row(
                    children: [
                      CommonLightText(
                        title: "Log out",
                        fontSize: 13.5,
                        color: Color.fromRGBO(185, 58, 47, 1),
                        height: 1,
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
}
