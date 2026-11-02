import "package:flutter/material.dart";
import "common/today_view_common.dart";

class TodayView extends StatefulWidget {
  const TodayView({super.key});

  @override
  State<TodayView> createState() => _TodayViewState();
}

class _TodayViewState extends State<TodayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 2, 20, 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                CommonHeader(),


                ///WelcomeSection
                SizedBox(height: 22),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning Rakib",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color.fromRGBO(71, 85, 105, 1),
                              height: 1.2,

                            ),
                          ),
                          SizedBox(height: 9,),
                          Text("Let's make today count!",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                              height: 1.2,
                              letterSpacing: -0.66,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("Stay consistent, success is close.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.5,
                            height: 1.3,
                            color: Color.fromRGBO(100, 116, 139, 1),
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 14),
                    Container(
                      width: 94,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(238, 240, 245, 1),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(11, 32, 51, 0.04),
                            offset: Offset(0, 1),
                            blurRadius: 2,
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(11, 32, 51, 0.18),
                            offset: Offset(0, 12),
                            blurRadius: 28,
                            spreadRadius: -20,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("🔥",
                                style: TextStyle(
                                  fontSize: 21,
                                  height: 1,
                                ),
                              ),

                              const SizedBox(width: 7),
                              const Text("12",
                                style: TextStyle(
                                  fontSize: 25,
                                  height: 1,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -0.75,
                                  color: Color.fromRGBO(17, 24, 39, 1),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text("Day streak",
                            style: TextStyle(
                              fontSize: 12,
                              height: 1,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(100, 116, 139, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ), //Welcome ses
                // today Focus
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(22, 50, 75, 1),
                        Color.fromRGBO(11, 32, 51, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(11, 32, 51, 0.6),
                        offset: Offset(0, 20),
                        blurRadius: 40,
                        spreadRadius: -26,
                      ),
                    ],
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("TODAY'S FOCUS",
                            style: TextStyle(
                              fontSize: 10.5,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              letterSpacing: 0.945,
                              color: Color.fromRGBO(232, 165, 0, 1),
                            ),
                            ),
                            SizedBox(height: 14,),
                            const Text("12mistakes",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.66,
                              height: 1.2,
                              fontSize: 22,
                              color: Color.fromRGBO(255, 255, 255, 1)
                            ),
                            ),
                            const SizedBox(height: 6),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "need revision ",
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "today",
                                    style: TextStyle(
                                      color: Color.fromRGBO(232, 165, 0, 1),
                                    ),
                                  ),
                                ],
                                style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.33,
                                  height: 1.25,
                                ),
                              ),
                            ),
                            SizedBox(height: 18,),
                            // start button call
                            CommonButtonLarge(
                              title: "Start Revision",
                              onPressed: () {
                                print(" ");
                              },
                            ),

                            const SizedBox(height: 16),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.description_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(169, 188, 203, 1),
                                ),
                                const SizedBox(width: 8),
                                const Text("Go to Revision List",
                                  style: TextStyle(
                                    fontSize: 11.5,
                                    fontWeight: FontWeight.w500,
                                    height: 1,
                                    color: Color.fromRGBO(169, 188, 203, 1),
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),

                      const SizedBox(width: 8),

                      // Right Side - Illustration
                      SizedBox(
                        width: 128,
                        height: 128,
                        child: Image.asset(
                          "assets/images/today.png",
                          fit: BoxFit.contain,
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
  }
}
