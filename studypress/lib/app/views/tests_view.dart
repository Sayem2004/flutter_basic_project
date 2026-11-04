import "package:flutter/material.dart";
import "common/header.dart";
import "common/common_bottom_navigation.dart";
import "today_view.dart";
import "learn_view.dart";

class TestsView extends StatelessWidget {
  const TestsView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 6, 20, 26),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(),
                const SizedBox(height: 18),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tests",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w800,
                            height: 1,
                            letterSpacing: -1.19,
                            color: Color.fromRGBO(17, 24, 39, 1),
                          ),
                        ),

                        const SizedBox(height: 11),

                        const Text(
                          "BCS 46th · 3 unfinished",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Color.fromRGBO(100, 116, 139, 1),
                          ),
                        ),
                      ],
                    ),

                    // Filter Button
                    Container(
                      height: 42,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 17,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(228, 232, 240, 1),
                        ),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.filter_list,
                            size: 17,
                            color: Color.fromRGBO(11, 32, 51, 1),
                          ),

                          SizedBox(width: 8),

                          Text(
                            "Filter",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 1,
                              color: Color.fromRGBO(17, 24, 39, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),





              ],
            ),



          ),
        ),
      ),


      bottomNavigationBar: CommonBottomNavigation(
        selectedIndex: 2,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const TodayView(),
                ),
              );
              break;

            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LearnView(),
                ),
              );
              break;

            case 2:
              break;

            case 3:
              break;

            case 4:
              break;
          }
        },
      ),
    );
  }
}