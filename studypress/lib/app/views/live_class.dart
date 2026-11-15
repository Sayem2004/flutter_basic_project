
import "package:flutter/material.dart";
import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";

class LiveClass extends StatelessWidget {
  const LiveClass({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(7, 17, 29, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackHeader(
                title: "Live class",
                titleColor: Color.fromRGBO(255, 255, 255, 1),
              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 112,
                      height: 112,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(
                          color: const Color.fromRGBO(232, 165, 0, 0.5),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                         //   color: const Color.fromRGBO(232, 165, 0, 0.10),
                            blurRadius: 18,
                            spreadRadius: 0,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.sensors,
                          size: 44,
                          color: Color.fromRGBO(232, 165, 0, 1),
                        ),
                      ),
                    ),
                    SizedBox(height: 22),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(232, 165, 0, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        SizedBox(width: 8),
                        CommonBoldText(
                          title: "STARTS IN 04:12",
                          fontSize: 11,
                          color: Color.fromRGBO(232, 165, 0, 1),
                          letterSpacing: 1.21,
                          height: 1,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    CommonBoldText(
                      title: "সন্ধি · doubt clearing",
                      fontSize: 21,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      height: 1.3,
                      letterSpacing: -0.63,
                      fontWeight: FontWeight.w800,
                    ),
                    SizedBox(height: 9),
                    CommonLightText(
                      title: "Rahman Sir · 60 min · 842 waiting",
                      fontSize: 12.5,
                      color: Color.fromRGBO(143, 163, 180, 1),
                      height: 1.5,
                    ),
                  ],
                ),
              ),


              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(16, 30, 44, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 0.08),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Before you join", style: TextStyle(
                        fontSize: 11,
                        height: 1,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.88,
                        color: Color.fromRGBO(92, 114, 132, 1),
                      ),
                    ),

                    const SizedBox(height: 9),
                    const Text("Keep the lecture sheet open — Rahman Sir will follow page 4 to 9. The recording appears in course content within 2 hours.", style: TextStyle(
                        fontSize: 12.5,
                        height: 1.6,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(195, 210, 222, 1),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              Column(
                children: [

                  InkWell(
                    borderRadius: BorderRadius.circular(14),
                    onTap: () {
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(240, 174, 18, 1),
                            Color.fromRGBO(224, 154, 0, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const CommonBoldText(
                        title: "Join live class",
                        fontSize: 15,
                        height: 1,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(17, 24, 39, 1),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: const CommonLightText(
                        title: "Remind me instead",
                        fontSize: 13,
                        height: 1,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(143, 163, 180, 1),
                      ),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
