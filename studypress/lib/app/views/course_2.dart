import 'package:flutter/material.dart';
import 'common/back_header.dart';
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'instructor.dart';
import 'common/syllabus_section.dart';
import 'common/common-whit-card.dart';
import 'common/button.dart';
import 'order_summary.dart';
import 'course_player.dart';

class Course2 extends StatefulWidget {
  const Course2({super.key});

  @override
  State<Course2> createState() => _Course2State();

}

class _Course2State extends State<Course2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackHeader(title: "Course",),
              SizedBox(height: 14,),

              Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: const Color.fromRGBO(238, 240, 245, 1),
                    child: Image.asset("assets/images/bdmap.webp",
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 14,
                    top: 14,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(252, 245, 228, 1),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: const CommonBoldText(title: "HYBRID COURSE", fontSize: 10,
                        color: Color.fromRGBO(138, 96, 0, 1),
                        height: 1,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              CommonBoldText(title: "BCS 46th Complete Preparation", fontSize: 21,letterSpacing: -0.36,),
              const SizedBox(height: 14,),
               InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Instructor(),),);
                   },
               child:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 41,
                    height: 41,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(238, 240, 245, 1),
                      borderRadius: BorderRadius.circular(46),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      "assets/images/rahman.webp",
                      width: 82,
                      height: 82,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonBoldText(
                          title: "Md. Rahman Sir",
                          fontSize: 13.5,
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                          letterSpacing: -0.32,
                        ),

                        SizedBox(height: 7),
                        CommonLightText(
                          title: "BCS mentor · 12 years teaching",
                          fontSize: 11.5,
                          height: 1.35,
                        ),
                      ],
                    ),
                    
                  ),
                  const SizedBox(width: 15),
                  CommonBoldText(title: "View profile", fontSize: 12,color: Color.fromRGBO(150, 105, 10, 1),),
                ],
              ),),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star_outline, size: 16, color: Color.fromRGBO(232, 165, 0, 1),),
                      const SizedBox(width: 5),
                      const Text("4.8 · 1,204", style: TextStyle(fontSize: 12, height: 1,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(71, 85, 105, 1),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 16),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.people_outline,
                        size: 16,
                        color: Color.fromRGBO(100, 116, 139, 1),
                      ),

                      const SizedBox(width: 5),

                      const Text(
                        "12,480",
                        style: TextStyle(
                          fontSize: 12,
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(71, 85, 105, 1),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 16),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.menu_book_outlined,
                        size: 16,
                        color: Color.fromRGBO(100, 116, 139, 1),
                      ),
                      const SizedBox(width: 5),
                      const Text("বাংলা + English",
                        style: TextStyle(
                          fontSize: 12,
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(71, 85, 105, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),



              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(17),
                margin: const EdgeInsets.only(top: 0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(232, 234, 240, 1),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 9,
                      runSpacing: 8,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [

                        const Text(
                          "৳2,499",
                          style: TextStyle(
                            fontSize: 24,
                            height: 1,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.84,
                            color: Color.fromRGBO(11, 32, 51, 1),
                          ),
                        ),

                        const Text(
                          "৳3,499",
                          style: TextStyle(
                            fontSize: 13,
                            height: 1,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(148, 163, 184, 1),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 9,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(236, 247, 241, 1),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: const Text(
                            "29% OFF",
                            style: TextStyle(
                              fontSize: 10,
                              height: 1,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.6,
                              color: Color.fromRGBO(20, 98, 71, 1),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 9),
                    const Text(
                      "One-time payment · access until 12 Nov 2026 · Premium members pay ৳1,999",
                      style: TextStyle(
                        fontSize: 11.5,
                        height: 1.4,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(100, 116, 139, 1),
                      ),
                    ),

                    const SizedBox(height: 14),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        CommonActionButton(
                          title: "Enroll now",
                          buttonWidth: null,
                          margin: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSummary(),),);
                          },
                        ),

                        const SizedBox(width: 10),

                        CommonActionButton(
                          title: "Preview",
                          icon: Icons.play_arrow_outlined,
                          showIcon: true,
                          showGradient: false,
                          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                          textColor: const Color.fromRGBO(11, 32, 51, 1),
                          iconColor: const Color.fromRGBO(11, 32, 51, 1),
                          buttonWidth: null,
                          margin: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CoursePlayer(),),);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24,),
              CommonBoldText(title: "Overview", fontSize: 16,letterSpacing: -0.3,),
              const SizedBox(height: 12,),
              CommonLightText(title: 'A complete preliminary-to-written roadmap for BCS 46th — live classes for every subject, recorded revision lessons, weekly model tests and downloadable lecture sheets. Built for candidates preparing alongside a job.', fontSize: 13.5,height: 1.6,),
              CommonLightText(title: "Read more", fontSize: 13.5,height: 1.6,color: Color.fromRGBO(150, 105, 10, 1),fontWeight: FontWeight.w700,),
              const SizedBox(height: 24,),
              CommonBoldText(title: "What you will learn", fontSize: 16,letterSpacing: -0.3,),
              const SizedBox(height: 12,),
              Column(
                children: [
                  learningPoint("Cover the full BCS preliminary syllabus in order",),
                  learningPoint("Fix Bangla grammar and English rules that cost marks",),
                  learningPoint("Build Math speed with shortcut techniques",),
                  learningPoint("Practise 40 years of previous BCS questions",),
                  learningPoint("Sit weekly model tests with rank feedback",),
                ],
              ),
              const SizedBox(height: 24,),
              CommonBoldText(title: "Course information", fontSize: 16,letterSpacing: -0.3,),
              const SizedBox(height: 10,),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(232, 234, 240, 1),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [

                    courseInfoRow("Total lessons",
                      "240 recorded + 120 live",
                    ),

                    courseInfoRow("Total duration",
                      "182 hours",
                    ),

                    courseInfoRow("Model tests",
                      "36 included",
                    ),

                    courseInfoRow("Resources",
                      "128 PDFs",
                    ),
                    courseInfoRow("Validity",
                      "Access until 12 Nov 2026",
                    ),
                    courseInfoRow("Certificate",
                      "On completion",
                      showDivider: false,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24,),
              const SyllabusSection(),
              const SizedBox(height: 12,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSummary(),),);
                },
          child:  CommonWhitCard(child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonBoldText(title: "৳2,499", fontSize: 15),
                      const SizedBox(height: 5,),
                      CommonLightText(title: "29% off · ends in 2 days", fontSize: 11),
                    ],
                  ),

                  CommonActionButton(
                    title: "Enroll now",
                    buttonWidth: null,
                    margin: EdgeInsets.zero,
                    onPressed: () {},
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

Widget learningPoint(String title) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 11),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // Check Circle
        Container(
          width: 20,
          height: 20,
          margin: const EdgeInsets.only(top: 1),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(236, 247, 241, 1),
            borderRadius: BorderRadius.circular(11),
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              size: 12,
              color: Color.fromRGBO(25, 122, 85, 1),
            ),
          ),
        ),

        const SizedBox(width: 10),

        // Learning Text
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              height: 1.45,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(51, 65, 85, 1),
            ),
          ),
        ),
      ],
    ),
  );
}



Widget courseInfoRow(
    String title,
    String value, {
      bool showDivider = true,
    }) {
  return Column(
    children: [

      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // Information Title
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(71, 85, 105, 1),
                ),
              ),
            ),

            // Information Value
            Text(
              value,
              style: const TextStyle(
                fontSize: 13,
                height: 1,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(17, 24, 39, 1),
              ),
            ),
          ],
        ),
      ),

      // Divider
      if (showDivider)
        const Divider(
          height: 1,
          thickness: 1,
          color: Color.fromRGBO(238, 240, 245, 1),
        ),
    ],
  );
}



