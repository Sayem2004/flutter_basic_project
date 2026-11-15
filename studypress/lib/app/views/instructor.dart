import 'package:flutter/material.dart';
import 'common/back_header.dart';
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'common/common-whit-card.dart';
import 'common/popular_course_list.dart';

class Instructor extends StatefulWidget {
  const Instructor({super.key});

  @override
  State<Instructor> createState() => _InstructorState();
}

class _InstructorState extends State<Instructor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 251, 255, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsetsGeometry.fromLTRB(20, 10, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackHeader(title: "Instructor"),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Container(
                      width: 82,
                      height: 82,
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
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                            height: 1.2,
                            letterSpacing: -0.32,
                          ),

                          SizedBox(height: 7),
                          CommonLightText(
                            title: "BCS mentor · Bangla & Bangladesh Affairs",
                            fontSize: 12.5,
                            height: 1.35,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CommonWhitCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CommonBoldText(title: "12 yrs", fontSize: 17, letterSpacing: -0.36,),
                            const SizedBox(height: 6),
                            CommonLightText(title: "Teaching", fontSize: 11),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: CommonWhitCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CommonBoldText(title: "4.8", fontSize: 17, letterSpacing: -0.36,),
                            const SizedBox(height: 6),
                            CommonLightText(title: "Rating", fontSize: 11),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: CommonWhitCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CommonBoldText(title: "38K", fontSize: 17, letterSpacing: -0.36,),
                            const SizedBox(height: 6),
                            CommonLightText(title: "Students", fontSize: 11),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18,),
                CommonLightText(title: "Teaches Bangla grammar and Bangladesh affairs for BCS and bank preparation. Known for shortcut rules and previous-question pattern analysis.", fontSize: 13.5,height: 1.6,color: Color.fromRGBO(71, 85, 105, 1),),
                const SizedBox(height: 24,),
                CommonBoldText(title: "Courses by Rahman Sir", fontSize: 16,letterSpacing: -0.36,),
                const SizedBox(height: 10,),
                const PopularCourseList(),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
