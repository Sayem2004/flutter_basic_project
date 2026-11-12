
import 'package:flutter/material.dart';
import 'common/boldText.dart';
import 'common/lightText.dart';
import 'common/button.dart';
import 'common/common-whit-card.dart';

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

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Video Player
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: const Color.fromRGBO(17, 24, 39, 1),
                  child: Stack(
                    children: [
                      // Back Button
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

                      // Speed and Fullscreen
                      Positioned(
                        right: 12,
                        top: 12,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (playbackSpeed == 1.0) {
                                    playbackSpeed = 1.5;
                                  } else if (playbackSpeed == 1.5) {
                                    playbackSpeed = 2.0;
                                  } else {
                                    playbackSpeed = 1.0;
                                  }
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 11,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(
                                    0, 0, 0, 0.42,
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

                      // Video Controls
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

                      // Video Progress
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

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CommonLightText(
                      title: "MODULE 01 · BANGLA GRAMMAR",
                      fontSize: 10.5,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.96,
                    ),

                    const SizedBox(height: 10),

                    const CommonBoldText(
                      title: "Lesson 08 · সন্ধি রূপ",
                      fontSize: 17.5,
                      height: 1.3,
                      letterSpacing: -0.36,
                    ),

                    const SizedBox(height: 13),

                    // Action Buttons
                    Wrap(
                      spacing: 9,
                      runSpacing: 9,
                      children: [
                        CommonActionButton(
                          title: "Mark complete",
                          icon: Icons.check,
                          showIcon: true,
                          showGradient: false,
                          backgroundColor: const Color.fromRGBO(
                            11, 32, 51, 1,
                          ),
                          textColor: const Color.fromRGBO(
                            255, 255, 255, 1,
                          ),
                          iconColor: const Color.fromRGBO(
                            255, 255, 255, 1,
                          ),
                          buttonWidth: null,
                          margin: EdgeInsets.zero,
                          onPressed: () {},
                        ),

                        CommonActionButton(
                          title: "Bookmark",
                          icon: isBookmarked
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                          showIcon: true,
                          showGradient: false,
                          backgroundColor: const Color.fromRGBO(
                            255, 255, 255, 1,
                          ),
                          textColor: const Color.fromRGBO(
                            11, 32, 51, 1,
                          ),
                          iconColor: const Color.fromRGBO(
                            11, 32, 51, 1,
                          ),
                          buttonWidth: null,
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
                          showGradient: false,
                          backgroundColor: const Color.fromRGBO(
                            255, 255, 255, 1,
                          ),
                          textColor: const Color.fromRGBO(
                            11, 32, 51, 1,
                          ),
                          iconColor: const Color.fromRGBO(
                            11, 32, 51, 1,
                          ),
                          buttonWidth: null,
                          margin: EdgeInsets.zero,
                          onPressed: () {},
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),


                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(232, 234, 240, 1),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          "Content",
                          "Notes",
                          "Resources",
                          "Ask AI",
                        ].asMap().entries.map((entry) {
                          int index = entry.key;
                          String title = entry.value;

                          return Expanded(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {
                                setState(() {
                                  selectedTab = index;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 14,
                                  horizontal: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: selectedTab == index
                                      ? const Color.fromRGBO(11, 32, 51, 1)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: CommonBoldText(
                                  title: title,
                                  fontSize: 10.5,
                                  fontWeight: FontWeight.w700,
                                  color: selectedTab == index
                                      ? const Color.fromRGBO(255, 255, 255, 1)
                                      : const Color.fromRGBO(17, 23, 31, 1),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),


                    const SizedBox(height: 16),

                    // Lesson Content List
                    CommonWhitCard(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                      child: Column(
                        children: [
                          lessonRow(
                            icon: Icons.check,
                            iconColor: const Color.fromRGBO(
                              25, 122, 85, 1,
                            ),
                            title: "Lesson 06 · উপসর্গ",
                            subtitle: "12:40",
                            showDivider: true,
                          ),

                          lessonRow(
                            icon: Icons.check,
                            iconColor: const Color.fromRGBO(
                              25, 122, 85, 1,
                            ),
                            title: "Lesson 07 · প্রত্যয়",
                            subtitle: "19:05",
                            showDivider: true,
                          ),

                          lessonRow(
                            icon: Icons.play_arrow,
                            iconColor: const Color.fromRGBO(
                              232, 165, 0, 1,
                            ),
                            title: "Lesson 08 · সন্ধি রূপ",
                            subtitle: "28:32",
                            status: "PLAYING",
                            statusColor: const Color.fromRGBO(
                              138, 96, 0, 1,
                            ),
                            statusBackground: const Color.fromRGBO(
                              252, 245, 228, 1,
                            ),
                            showDivider: true,
                          ),

                          lessonRow(
                            icon: Icons.play_arrow,
                            iconColor: const Color.fromRGBO(
                              148, 163, 184, 1,
                            ),
                            title: "Lesson 09 · সমাস",
                            subtitle: "24:10",
                            showDivider: true,
                          ),

                          lessonRow(
                            icon: Icons.description_outlined,
                            iconColor: const Color.fromRGBO(
                              100, 116, 139, 1,
                            ),
                            title: "Quiz · Module 01",
                            subtitle: "10 questions",
                            showDivider: true,
                          ),

                          lessonRow(
                            icon: Icons.lock_outline,
                            iconColor: const Color.fromRGBO(
                              148, 163, 184, 1,
                            ),
                            title: "Lesson 10 · কারক",
                            subtitle: "31:12",
                            status: "LOCKED",
                            statusColor: const Color.fromRGBO(
                              71, 85, 105, 1,
                            ),
                            statusBackground: const Color.fromRGBO(
                              243, 245, 249, 1,
                            ),
                            isLocked: true,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16,),
                    CommonWhitCard(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonLightText(title: "UP NEXT", fontSize: 10.5,fontWeight: FontWeight.w600,letterSpacing: 0.96,),
                                const SizedBox(height: 8,),
                                CommonBoldText(title: "Lesson 09 · সমাস", fontSize: 13.5,letterSpacing: -0.18,height: 1.25,),
                                const SizedBox(height: 5,),
                                CommonLightText(title: "Autoplay in 8 seconds", fontSize: 11, height: 1.3,)
                              ],
                            ),
                            CommonActionButton(
                              title: "Play next",
                              icon: Icons.play_arrow,
                              showIcon: true,
                              showGradient: false,
                              backgroundColor: const Color.fromRGBO(11, 32, 51, 1),
                              textColor: const Color.fromRGBO(255, 255, 255, 1),
                              iconColor: const Color.fromRGBO(255, 255, 255, 1),
                              buttonWidth: null,
                              margin: EdgeInsets.zero,
                              onPressed: () {},
                            ),
                          ],

                        ),
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

  Widget lessonRow({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    String? status,
    Color? statusColor,
    Color? statusBackground,
    bool showDivider = false,
    bool isLocked = false,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(243, 245, 249, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  size: 17,
                  color: iconColor,
                ),
              ),

              const SizedBox(width: 12),

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
                          title: title,
                          fontSize: 13,
                          height: 1.25,
                          fontWeight: FontWeight.w600,
                          color: isLocked
                              ? const Color.fromRGBO(100, 116, 139, 1)
                              : const Color.fromRGBO(17, 24, 39, 1),
                        ),

                        if (status != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: statusBackground,
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: CommonBoldText(
                              title: status,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: statusColor!,
                            ),
                          ),
                      ],
                    ),

                    const SizedBox(height: 4),

                    CommonLightText(
                      title: subtitle,
                      fontSize: 11,
                      height: 1.3,
                      color: const Color.fromRGBO(148, 163, 184, 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        if (showDivider)
          const Divider(
            height: 1,
            thickness: 1,
            color: Color.fromRGBO(238, 240, 245, 1),
          ),
      ],
    );
  }
}
