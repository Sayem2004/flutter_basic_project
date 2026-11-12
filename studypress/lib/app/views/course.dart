import 'package:flutter/material.dart';
import 'common/back_header.dart';
import 'common/common-black-card.dart';
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'common/button.dart';
import 'course_player.dart';
import 'common/actionButtonCommon.dart';
import 'ai_mentor.dart';
import 'common/common-whit-card.dart';

class Course extends StatefulWidget {
  final String courseTitle;

  const Course({super.key, this.courseTitle = "Course"});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> courseLessons = [
      {
        "icon": Icons.check,
        "iconColor": Color.fromRGBO(25, 122, 85, 1),
        "title": "Lesson 06 · উপসর্গ",
        "subtitle": "12:40 · completed",
        "status": "",
      },
      {
        "icon": Icons.check,
        "iconColor": Color.fromRGBO(25, 122, 85, 1),
        "title": "Lesson 07 · প্রত্যয়",
        "subtitle": "19:05 · completed",
        "status": "",
      },
      {
        "icon": Icons.play_arrow,
        "iconColor": Color.fromRGBO(232, 165, 0, 1),
        "title": "Lesson 08 · সন্ধি রূপ",
        "subtitle": "28:32 · 12:48 watched",
        "status": "PLAYING",
      },
      {
        "icon": Icons.play_arrow,
        "iconColor": Color.fromRGBO(148, 163, 184, 1),
        "title": "Lesson 09 · সমাস",
        "subtitle": "24:10 · not started",
        "status": "",
      },
      {
        "icon": Icons.sensors,
        "iconColor": Color.fromRGBO(100, 116, 139, 1),
        "title": "Recorded live class · Q&A",
        "subtitle": "12 Aug · 58:20",
        "status": "RECORDED LIVE",
      },
    ];
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(20, 10, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackHeader(title: widget.courseTitle),
              const SizedBox(height: 16),
              CommonBlackCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 86,
                          height: 86,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: SweepGradient(
                              colors: [
                                Color.fromRGBO(232, 165, 0, 1),
                                Color.fromRGBO(232, 165, 0, 1),
                                Color.fromRGBO(255, 255, 255, 0.12),
                                Color.fromRGBO(255, 255, 255, 0.12),
                              ],
                              stops: [0, 0.62, 0.62, 1],
                            ),
                          ),
                          child: Center(
                            child: Container(
                              width: 68,
                              height: 68,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(12, 33, 53, 1),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CommonBoldText(
                                    title: "64%",
                                    fontSize: 24,
                                    color: Colors.white,
                                    height: 1,
                                    letterSpacing: -0.72,
                                  ),
                                  SizedBox(height: 5),
                                  CommonLightText(
                                    title: "DONE",
                                    fontSize: 9.5,
                                    color: Color.fromRGBO(143, 163, 180, 1),
                                    height: 1,
                                    letterSpacing: 0.76,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 18),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonBoldText(
                                title: "HYBRID COURSE",
                                fontSize: 11.5,
                                color: Color.fromRGBO(232, 165, 0, 1),
                              ),
                              SizedBox(height: 10),
                              CommonBoldText(
                                title: "Bangla Grammar Masterclass",
                                fontSize: 19,
                                color: Colors.white,
                                height: 1.25,
                              ),
                              SizedBox(height: 7),
                              CommonLightText(
                                title: "18 / 30 lessons · 5h 22m left",
                                fontSize: 12,
                                color: Color.fromRGBO(169, 188, 203, 1),
                                height: 1.5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    CommonActionButton(
                      title: "Resume lesson 08",
                      icon: Icons.play_arrow_outlined,
                      buttonWidth: null,
                      margin: EdgeInsets.zero,
                      backgroundColor: const Color.fromRGBO(240, 174, 18, 1),
                      textColor: const Color.fromRGBO(17, 24, 39, 1),
                      iconColor: const Color.fromRGBO(17, 24, 39, 1),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CoursePlayer(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ActionButtonCommon(
                      icon: Icons.menu_book,
                      title: "Mock Test",
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CoursePlayer(),),);
                      },
                    ),
                    const SizedBox(width: 15),
                    ActionButtonCommon(
                      icon: Icons.description_outlined, title: "Live Test",
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> CoursePlayer(),),);
                      },
                    ),
                    const SizedBox(width: 15),
                    ActionButtonCommon(
                      icon: Icons.folder_outlined, title: "Resources",
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> CoursePlayer(),),);
                      },
                    ),
                    const SizedBox(width: 15),
                    ActionButtonCommon(
                      icon: Icons.auto_awesome_outlined, title: "Ask AI",
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> AiMentorView(),),);
                      },
                    ),
                    const SizedBox(width: 15),

                  ],
                ),
              ),
              const SizedBox(height: 24,),
              CommonBoldText(title: "Next live class", fontSize: 16,letterSpacing: -0.3,),
              const SizedBox(height: 12,),
              CommonWhitCard(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(253, 240, 238, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.graphic_eq,
                            color: Color.fromRGBO(150, 48, 38, 1),
                            size: 22,
                          ),
                        ),

                        const SizedBox(width: 12),

                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonBoldText(
                                title: "সন্ধি · doubt clearing",
                                fontSize: 13,
                              ),
                              SizedBox(height: 5),
                              CommonLightText(
                                title: "Sunday 8:00 PM · 60 min · Rahman Sir",
                                fontSize: 10,
                                color: Color.fromRGBO(100, 116, 139, 1),
                              ),
                            ],
                          ),
                        ),

                        OutlinedButton(
                          onPressed: () {
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Color.fromRGBO(11, 32, 51, 1),
                            side: const BorderSide(
                              color: Color.fromRGBO(226, 230, 238, 1),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                          ),
                          child: const Text(
                            "Remind",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              const SizedBox(height: 24,),
              CommonBoldText(title: "Course content", fontSize: 16,letterSpacing: -0.3,),
              const SizedBox(height: 12,),
              CommonWhitCard(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: courseLessons.length,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 1,
                      color: Color.fromRGBO(238, 240, 245, 1),
                    );
                  },
                  itemBuilder: (context, index) {
                    final lesson = courseLessons[index];

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CoursePlayer(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Row(
                          children: [
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(243, 245, 249, 1),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Icon(
                                lesson["icon"],
                                size: 18,
                                color: lesson["iconColor"],
                              ),
                            ),

                            const SizedBox(width: 13),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    spacing: 7,
                                    runSpacing: 5,
                                    children: [
                                      CommonBoldText(
                                        title: lesson["title"],
                                        fontSize: 13.5,
                                        letterSpacing: -0.2,
                                      ),

                                      if (lesson["status"] == "PLAYING")
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 9,
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(252, 245, 228, 1),
                                            borderRadius: BorderRadius.circular(999),
                                          ),
                                          child: const Text(
                                            "PLAYING",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(138, 96, 0, 1),
                                              letterSpacing: 0.6,
                                            ),
                                          ),
                                        ),

                                      if (lesson["status"] == "RECORDED LIVE")
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 9,
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(243, 245, 249, 1),
                                            borderRadius: BorderRadius.circular(999),
                                          ),
                                          child: const Text(
                                            "RECORDED LIVE",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(71, 85, 105, 1),
                                              letterSpacing: 0.6,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),

                                  const SizedBox(height: 5),

                                  CommonLightText(
                                    title: lesson["subtitle"],
                                    fontSize: 11.5,
                                    height: 1.3,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24,),
              CommonBoldText(title: "Announcements", fontSize: 16,letterSpacing: -0.3,),
              const SizedBox(height: 12,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(252, 245, 228, 1),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonBoldText(
                      title: "Sunday's class moved to 8:30 PM",
                      fontSize: 13,
                      color: Color.fromRGBO(138, 96, 0, 1),
                      height: 1.3,
                    ),
                    SizedBox(height: 6),
                    CommonLightText(
                      title: "Lecture sheet for সন্ধি is uploaded in Resources. Recording will be available within 2 hours.",
                      fontSize: 12,
                      color: Color.fromRGBO(150, 105, 10, 1),
                      height: 1.5,
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
