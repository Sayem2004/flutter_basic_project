
import "package:flutter/material.dart";
import 'package:study_press_mobile/app/views/course_2.dart';
import "common/back_header.dart";
import 'common/common-black-card.dart';
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'common/start_button.dart';
import 'course.dart';
import 'common/common-whit-card.dart';
import 'common/recommended_course_card.dart';
import 'common/popular_course_list.dart';
import 'common/top_instructors.dart';
import 'live_class.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  int selectedCategory = 1;

  final List<String> categories = ["All", "BCS", "Bank", "Govt Jobs", "NTRCA", "English", "Math",];

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
                    const Expanded(
                      child: BackHeader(
                        title: "Courses",
                      ),
                    ),
                    const SizedBox(width: 10),
                    headerButton(
                      icon: Icons.search,
                      onTap: () {},
                    ),
                    const SizedBox(width: 10),
                    headerButton(
                      icon: Icons.filter_list,
                      onTap: () {},
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        categories.length,
                            (index) {
                          final isSelected =
                              selectedCategory == index;

                          return Padding(
                            padding: EdgeInsets.only(
                              right: index == categories.length - 1
                                  ? 0
                                  : 8,
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(999),
                              onTap: () {
                                setState(() {
                                  selectedCategory = index;
                                });
                              },
                              child: Container(
                                constraints: const BoxConstraints(
                                  minHeight: 40,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 10,
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? const Color.fromRGBO(
                                      11, 32, 51, 1)
                                      : const Color.fromRGBO(
                                      255, 255, 255, 1),
                                  borderRadius:
                                  BorderRadius.circular(999),
                                  border: Border.all(
                                    color: isSelected
                                        ? const Color.fromRGBO(
                                        11, 32, 51, 1)
                                        : const Color.fromRGBO(
                                        228, 232, 240, 1),
                                  ),
                                ),
                                child: Text(
                                  categories[index],
                                  style: TextStyle(
                                    fontSize: 12.5,
                                    height: 1,
                                    fontWeight: FontWeight.w700,
                                    color: isSelected
                                        ? const Color.fromRGBO(
                                        255, 255, 255, 1)
                                        : const Color.fromRGBO(
                                        71, 85, 105, 1),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Course()),
                    );
                  },
                  child: CommonBlackCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(6, 3, 8, 3),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(232, 165, 0, 0.16),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(232, 165, 0, 1),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text("CONTINUE LEARNING",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.9,
                                      color: Color.fromRGBO(232, 165, 0, 1),
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // CommonLightText(
                            //   title: "See all course",
                            //   fontSize: 11,
                            //   color: const Color.fromRGBO(195, 210, 222, 1),
                            // ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(18, 40, 61, 1),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset("assets/images/course.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 13),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonBoldText(
                                    title: "Bangla Grammar Masterclass",
                                    fontSize: 14.5,
                                    color: const Color.fromRGBO(255, 255, 255, 1,),
                                  ),

                                  const SizedBox(height: 5),
                                  CommonLightText(
                                    title:
                                    "Lesson 08 · 18 min left ",
                                    fontSize: 11,
                                    color: const Color.fromRGBO(169, 188, 203, 1,),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 5,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 0.14,),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: FractionallySizedBox(
                                  alignment: Alignment.centerLeft,
                                  widthFactor: 0.64,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(240, 174, 18, 1),
                                          Color.fromRGBO(224, 154, 0, 1),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text("64%",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(195, 210, 222, 1),
                                height: 1,
                              ),
                            ),
                            const SizedBox(width: 10),
                            CommonButtonLarge(title: "Resume",
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonBoldText(title: "Next live class", fontSize: 16),
                    CommonLightText(title: "My Courses", fontSize: 12, fontWeight: FontWeight.w700,letterSpacing: -0.3,color: Color.fromRGBO(150, 105, 10, 1),)
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LiveClass(),),);
                  },
                child:  Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CommonWhitCard(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(253, 240, 238, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.sensors,
                            size: 22,
                            color: Color.fromRGBO(150, 48, 38, 1),
                          ),
                        ),

                        const SizedBox(width: 13),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                spacing: 7,
                                runSpacing: 5,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  CommonBoldText(
                                    title: "Math · Percentage Shortcuts",
                                    fontSize: 14,
                                    height: 1.2,
                                    letterSpacing: -0.21,
                                  ),
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(253, 240, 238, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(999),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 9,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        "LIVE",
                                        style: TextStyle(
                                          fontSize: 10,
                                          height: 1,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.6,
                                          color: Color.fromRGBO(150, 48, 38, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 5),
                              CommonLightText(
                                title: "Today 8:00 PM · 60 min · Rahman Sir",
                                fontSize: 11.5,
                                height: 1.35,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(width: 8),
                        const Icon(
                          Icons.chevron_right,
                          size: 16,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ],
                    ),
                  ),
                ),
      ),
                const SizedBox(height: 24,),
                CommonBoldText(title: "Recommended for you", fontSize: 16,letterSpacing: -0.3,),
                const SizedBox(height: 12,),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Course2(),),);
                },
                  child: const RecommendedCourseCard(),),
                const SizedBox(height: 24,),
                CommonBoldText(title: "Popular courses", fontSize: 16,letterSpacing: -0.3,),
                const SizedBox(height: 12),
                const PopularCourseList(),
                const SizedBox(height: 24,),
                CommonBoldText(title: "Top instructors", fontSize: 16,letterSpacing: -0.3,),
                const SizedBox(height: 12),
                const TopInstructors(),













              ],
            ),
          ),
        ),
      ),
    );
  }

  // Header Action Button
  Widget headerButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color.fromRGBO(228, 232, 240, 1),
          ),
        ),
        child: Icon(
          icon,
          size: 18,
          color: const Color.fromRGBO(11, 32, 51, 1),
        ),
      ),
    );
  }
}
