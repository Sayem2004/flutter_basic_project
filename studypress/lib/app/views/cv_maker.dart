
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";

class CvMakerView extends StatelessWidget {
  const CvMakerView({super.key});

  final List<Map<String, String>> cvs = const [
    {
      "name": "Tanvir_Ahmed_ATS.pdf",
      "format": "ATS Professional",
      "date": "edited 2 days ago",
    },
    {
      "name": "Bank_Application_2026.pdf",
      "format": "Modern Professional",
      "date": "3 weeks ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 8, 20, 14),
                  child: BackHeader(
                    title: "CV Maker",
                    subtitle: "Autosaves as you go",
                    subtitleColor: Color.fromRGBO(100, 116, 139, 1),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(19),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(232, 234, 240, 1),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CommonBoldText(
                                title: "Create a new CV",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),

                              const SizedBox(height: 7),

                              const CommonLightText(
                                title:
                                "Guided flow from your profile — education, experience, skills, then format.",
                                fontSize: 13,
                                color: Color.fromRGBO(100, 116, 139, 1),
                                height: 1.5,
                              ),

                              const SizedBox(height: 12),

                              const CommonBoldText(
                                title: "Start →",
                                fontSize: 12.5,
                                color: Color.fromRGBO(150, 105, 10, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Improve Existing CV

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(19),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(11, 32, 51, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CommonBoldText(
                                title: "Improve my existing CV",
                                fontSize: 16,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w600,
                              ),

                              const SizedBox(height: 7),

                              const CommonLightText(
                                title:
                                "Upload your old CV — we extract it, audit it, rewrite the wording and rebuild it professionally.",
                                fontSize: 13,
                                color: Color.fromRGBO(169, 188, 203, 1),
                                height: 1.5,
                              ),

                              const SizedBox(height: 12),

                              const CommonBoldText(
                                title: "Upload CV →",
                                fontSize: 12.5,
                                color: Color.fromRGBO(232, 165, 0, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 24, 20, 4),
                  child: CommonBoldText(
                    title: "YOUR CVS",
                    fontSize: 12,
                    color: Color.fromRGBO(100, 116, 139, 1),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.96,
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      for (int i = 0; i < cvs.length; i++)
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 14,
                            ),
                            decoration: BoxDecoration(
                              border: i == 0
                                  ? const Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(
                                    238, 240, 245, 1,
                                  ),
                                ),
                              )
                                  : null,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 38,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                      255, 255, 255, 1,
                                    ),
                                    border: Border.all(
                                      color: const Color.fromRGBO(
                                        232, 234, 240, 1,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: List.generate(
                                        7,
                                            (index) => Container(
                                          height: 2,
                                          width: double.infinity,
                                          color: const Color.fromRGBO(
                                            238, 240, 245, 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(width: 13),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      CommonBoldText(
                                        title: cvs[i]["name"]!,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),

                                      const SizedBox(height: 4),

                                      CommonLightText(
                                        title:
                                        "${cvs[i]["format"]} · ${cvs[i]["date"]}",
                                        fontSize: 11.5,
                                        color: const Color.fromRGBO(
                                          100, 116, 139, 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const Icon(
                                  Icons.chevron_right,
                                  size: 18,
                                  color: Color.fromRGBO(148, 163, 184, 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(232, 234, 240, 1),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonBoldText(
                                  title: "Formats",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),

                                SizedBox(height: 4),

                                CommonLightText(
                                  title:
                                  "ATS · Modern · Europass · Fresh Graduate · Academic · Executive",
                                  fontSize: 12,
                                  color: Color.fromRGBO(100, 116, 139, 1),
                                  height: 1.35,
                                ),
                              ],
                            ),
                          ),

                          const Icon(
                            Icons.chevron_right,
                            size: 18,
                            color: Color.fromRGBO(148, 163, 184, 1),
                          ),
                        ],
                      ),
                    ),
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
