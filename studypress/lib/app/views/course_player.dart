
import "package:flutter/material.dart";
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'common/button.dart';

class CoursePlayer extends StatefulWidget {
  const CoursePlayer({super.key});

  @override
  State<CoursePlayer> createState() => _CoursePlayerState();
}

class _CoursePlayerState extends State<CoursePlayer> {
  bool isPlaying = false;
  bool isBookmarked = false;
  double playbackSpeed = 1.0;
  double videoProgress = 0.45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: const Color.fromRGBO(17, 24, 39, 1),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 12,
                        top: 12,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 12,
                        top: 12,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  playbackSpeed =
                                  playbackSpeed == 1.0
                                      ? 1.5
                                      : playbackSpeed == 1.5
                                      ? 2.0
                                      : 1.0;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 11,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(0, 0, 0, 0.42,
                                  ),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: CommonBoldText(
                                  title: "${playbackSpeed}x",
                                  fontSize: 11.5,
                                  color: const Color.fromRGBO(
                                    255, 255, 255, 1,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.fullscreen,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.replay,
                                color: Colors.white,
                                size: 26,
                              ),
                            ),
                            const SizedBox(width: 10),

                            Container(
                              width: 62,
                              height: 62,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(
                                  255, 255, 255, 0.16,
                                ),
                                border: Border.all(
                                  color: const Color.fromRGBO(
                                    255, 255, 255, 0.3,
                                  ),
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPlaying = !isPlaying;
                                  });
                                },
                                icon: Icon(
                                  isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.forward,
                                color: Colors.white,
                                size: 26,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        left: 14,
                        right: 14,
                        bottom: 12,
                        child: Row(
                          children: [
                            const CommonLightText(
                              title: "12:48",
                              fontSize: 10.5,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),

                            Expanded(
                              child: Slider(
                                value: videoProgress,
                                activeColor: const Color.fromRGBO(
                                  232, 165, 0, 1,
                                ),
                                inactiveColor: const Color.fromRGBO(
                                  255, 255, 255, 0.24,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    videoProgress = value;
                                  });
                                },
                              ),
                            ),

                            const CommonLightText(
                              title: "28:32",
                              fontSize: 10.5,
                              color: Color.fromRGBO(
                                255, 255, 255, 0.7,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsetsGeometry.fromLTRB(20, 16, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonLightText(title: "MODULE 01 · BANGLA GRAMMAR",
                      fontSize: 10.5,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.96,
                  ),
                  const SizedBox(height: 10,),
                  CommonBoldText(title: "Lesson 08. সন্ধি রূপ", fontSize: 17.5,height: 1.3,
                  letterSpacing: -0.36,),
                  const SizedBox(height: 13,),

                  Wrap(
                    spacing: 9,
                    runSpacing: 9,
                    children: [
                      CommonActionButton(
                        title: "Mark complete",
                        icon: Icons.check,
                        showIcon: true,
                        backgroundColor: const Color.fromRGBO(11, 32, 51, 1),
                        textColor: const Color.fromRGBO(255, 255, 255, 1),
                        iconColor: const Color.fromRGBO(255, 255, 255, 1),
                        buttonWidth: 125,
                        margin: EdgeInsets.zero,
                        onPressed: () {},
                      ),

                      CommonActionButton(
                        title: "Bookmark",
                        icon: Icons.bookmark_border,
                        showIcon: true,
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                        textColor: const Color.fromRGBO(11, 32, 51, 1),
                        iconColor: const Color.fromRGBO(11, 32, 51, 1),
                        buttonWidth: 105,
                        margin: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            isBookmarked = !isBookmarked;
                          });
                        },
                      ),

                      CommonActionButton(
                        title: "Download",
                        icon: Icons.download_outlined,
                        showIcon: true,
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                        textColor: const Color.fromRGBO(11, 32, 51, 1),
                        iconColor: const Color.fromRGBO(11, 32, 51, 1),
                        buttonWidth: 100,
                        margin: EdgeInsets.zero,
                        onPressed: () {},
                      ),
                    ],
                  ),







                ],
              ),




              ),

            ],
          ),
        ),
      ),
    );
  }
}
