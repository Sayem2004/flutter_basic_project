import 'package:flutter/material.dart';
import 'package:study_press_mobile/app/views/common/common-whit-card.dart';
import 'common/back_header.dart';
import 'common/common-black-card.dart';
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'cv_maker.dart';
import ' explore_jobs.dart';
import 'ai_mentor.dart';

class CareerHub extends StatelessWidget {
  const CareerHub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 251, 255, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackHeader(
                  title: "Career Hub",
                  subtitle: "Kept separate from your exam preparation",
                  subtitleColor: Color.fromRGBO(100, 116, 139, 1),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CvMakerView()),
                    );
                  },
                  child: CommonBlackCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonLightText(
                          title: "CV MAKER",
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                          color: Color.fromRGBO(231, 165, 0, 1),
                        ),
                        const SizedBox(height: 11),
                        CommonBoldText(
                          title: "Build a new CV or upgrade the one you have",
                          fontSize: 19,
                          height: 1.3,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        const SizedBox(height: 8),
                        CommonLightText(
                          title: "6 formats · ATS-safe · audit and rewrite",
                          fontSize: 13,
                          height: 1.5,
                          color: Color.fromRGBO(169, 188, 203, 1),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ExploreJobsView(),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(18),
                  child: CommonWhitCard(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonBoldText(
                                title: "Explore Jobs",
                                fontSize: 15,
                                height: 1.2,
                              ),
                              const SizedBox(height: 5),
                              CommonLightText(
                                title: "218 circulars · 12 closing this week",
                                fontSize: 12.5,
                                height: 1.4,
                                color: const Color.fromRGBO(100, 116, 139, 1),
                              ),
                            ],
                          ),
                        ),

                        const Icon(
                          Icons.chevron_right,
                          size: 20,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ],
                    ),
                  ),
                ),const SizedBox(height: 20),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ExploreJobsView(),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(18),
                  child: CommonWhitCard(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonBoldText(
                                title: "Study Abroad",
                                fontSize: 15,
                                height: 1.2,
                              ),
                              const SizedBox(height: 5),
                              CommonLightText(
                                title: "Guidance and enquiry — approved scope only",
                                fontSize: 12.5,
                                height: 1.4,
                                color: const Color.fromRGBO(100, 116, 139, 1),
                              ),
                            ],
                          ),
                        ),

                        const Icon(
                          Icons.chevron_right,
                          size: 20,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ],
                    ),
                  ),
                ),const SizedBox(height: 20),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AiMentorView(),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(18),
                  child: CommonWhitCard(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonBoldText(
                                title: "AI Mentor",
                                fontSize: 15,
                                height: 1.2,
                              ),
                              const SizedBox(height: 5),
                              CommonLightText(
                                title: "Explain a question, teach a topic, make revision notes",
                                fontSize: 12.5,
                                height: 1.4,
                                color: const Color.fromRGBO(100, 116, 139, 1),
                              ),
                            ],
                          ),
                        ),

                        const Icon(
                          Icons.chevron_right,
                          size: 20,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ],
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
