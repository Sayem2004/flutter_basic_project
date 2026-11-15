
import "package:flutter/material.dart";
import "boldText.dart";
import "lightText.dart";
import '../instructor.dart';

class TopInstructors extends StatelessWidget {
  const TopInstructors({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(
        bottom: 4,
        right: 20,
      ),
      child: Row(
        children:  [

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Instructor(),),);
            },
          child:  InstructorCard(
            image: "assets/images/rahman.webp",
            name: "Md. Rahman Sir",
            subject: "BCS · Bangla",
          ),
      ),

          SizedBox(width: 12),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Instructor(),),);
            },
            child:  InstructorCard(
            image: "assets/images/nusrat.webp",
            name: "Nusrat Jahan",
            subject: "English",
          ),
    ),

          SizedBox(width: 12),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Instructor(),),);
            },
            child:  InstructorCard(
            name: "Tanmoy Das",
            subject: "Math",
          ),
    ),
        ],
      ),
    );
  }
}

// Reusable Instructor Card
class InstructorCard extends StatelessWidget {
  final String? image;
  final String name;
  final String subject;

  const InstructorCard({
    super.key,
    this.image,
    required this.name,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 132,
      padding: const EdgeInsets.all(14),
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

          // Instructor Profile Image
          ClipOval(
            child: Container(
              width: 56,
              height: 56,
              color: const Color.fromRGBO(238, 240, 245, 1),
              child: image != null
                  ? Image.asset(
                image!,
                width: 56,
                height: 56,
                fit: BoxFit.cover,
              )
                  : const Center(
                child: CommonLightText(
                  title: "Photo",
                  fontSize: 11,
                ),
              ),
            ),
          ),

          const SizedBox(height: 11),

          // Instructor Name
          CommonBoldText(
            title: name,
            fontSize: 13,
            fontWeight: FontWeight.w700,
            height: 1.25,
            letterSpacing: -0.195,
          ),

          const SizedBox(height: 4),

          // Instructor Subject
          CommonLightText(
            title: subject,
            fontSize: 11,
            height: 1.35,
          ),
        ],
      ),
    );
  }
}
