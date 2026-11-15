
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";
import "common/common-whit-card.dart";
import "common/button.dart";
import 'my_courses.dart';
import 'course.dart';

class Enrolled extends StatelessWidget {
  const Enrolled({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 20, 26),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header
                        const BackHeader(
                          title: "",
                        ),

                        // Success Section
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 36),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Success Icon
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(
                                    236,
                                    247,
                                    241,
                                    1,
                                  ),
                                  borderRadius: BorderRadius.circular(44),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  size: 36,
                                  color: Color.fromRGBO(25, 122, 85, 1),
                                ),
                              ),

                              const SizedBox(height: 20),

                              // Success Title
                              const CommonBoldText(
                                title: "You're enrolled!",
                                fontSize: 24,
                                height: 1.25,
                                letterSpacing: -0.84,
                                fontWeight: FontWeight.w800,
                              ),

                              const SizedBox(height: 10),

                              // Success Description
                              const FractionallySizedBox(
                                widthFactor: 0.80,
                                child: CommonLightText(
                                  title:
                                  "BCS 46th Complete Preparation is ready. Your first live class is Sunday at 8:00 PM.",
                                  fontSize: 13.5,
                                  height: 1.55,
                                  color: Color.fromRGBO(100, 116, 139, 1),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 26),

                        // Enrollment Information
                        CommonWhitCard(
                          padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                          child: Column(
                            children: [
                              infoRow(
                                title: "Paid",
                                value: "৳1,999 · bKash",
                              ),

                              infoDivider(),

                              infoRow(
                                title: "Access until",
                                value: "12 Nov 2026",
                              ),

                              infoDivider(),

                              infoRow(
                                title: "Included",
                                value: "120 live · 240 recorded · 128 PDFs",
                              ),
                            ],
                          ),
                        ),

                        const Spacer(),

                        // Bottom Actions
                        Padding(
                          padding: const EdgeInsets.only(top: 26),
                          child: Column(
                            children: [
                              CommonActionButton(
                                title: "Start learning",
                                buttonWidth: double.infinity,
                                margin: EdgeInsets.zero,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Course(),),);
                                  },
                              ),

                              const SizedBox(height: 10),

                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCourses(),),);
                                },
                                child:  Padding(
                                  padding: EdgeInsets.all(10),
                                  child: CommonBoldText(
                                    title: "View my courses",
                                    fontSize: 13.5,
                                    height: 1,
                                    color: Color.fromRGBO(100, 116, 139, 1),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
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
          },
        ),
      ),
    );
  }

  // Enrollment Information Row
  Widget infoRow({
    required String title,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Expanded(
            child: CommonLightText(
              title: title,
              fontSize: 13,
              height: 1,
              color: const Color.fromRGBO(71, 85, 105, 1),
            ),
          ),

          Flexible(
            child: CommonBoldText(
              title: value,
              fontSize: 12.5,
              height: 1.3,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  // Information Divider
  Widget infoDivider() {
    return const Divider(
      height: 1,
      thickness: 1,
      color: Color.fromRGBO(238, 240, 245, 1),
    );
  }
}
