import "package:flutter/material.dart";
import "package:study_press_mobile/app/views/common/common-black-card.dart";
import "common/notification_header.dart";
import "common/common-whit-card.dart";
import "common/boldText.dart";
import "common/lightText.dart";
import "common/notification_filter_tabs.dart";
import "common/notification_item.dart";
import 'revision.dart';
import 'preparation.dart';
import 'course_player.dart';
import 'membership.dart';

class NotificationView extends StatefulWidget {

  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  bool pushEnabled = true;
  bool emailEnabled = true;
  bool smsEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NotificationHeader(),

                const SizedBox(height: 18),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonBoldText(
                          title: "Notifications",
                          fontSize: 30,
                          letterSpacing: -0.42,
                        ),
                        const SizedBox(height: 10),
                        CommonLightText(
                          title: "2 unread · 5 from this week",
                          fontSize: 12.5,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: CommonLightText(
                        title: "Mark all read",
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(150, 105, 10, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const NotificationFilterTabs(
                  tabs: ["All", "Study", "Results", "Content", "Account"],
                ),

                const SizedBox(height: 16),
                CommonBlackCard(
                  child: Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(232, 165, 0, 0.12),
                          border: Border.all(
                            color: const Color.fromRGBO(232, 165, 0, 0.42),
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.wifi_tethering,
                          size: 21,
                          color: Color.fromRGBO(232, 165, 0, 1),
                        ),
                      ),
                      const SizedBox(width: 13),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 7,
                                  color: Color.fromRGBO(232, 165, 0, 1),
                                ),
                                SizedBox(width: 8),
                                CommonBoldText(
                                  title: "STARTING SOON",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.1,
                                  color: Color.fromRGBO(232, 165, 0, 1),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            CommonBoldText(
                              title: "Full Model Test 12 · 9:00 PM",
                              fontSize: 14.5,
                              height: 1.3,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            SizedBox(height: 5),
                            CommonLightText(
                              title:
                                  "100 questions · 90 min · 4,182 registered",
                              fontSize: 11,
                              color: Color.fromRGBO(169, 188, 203, 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),
                CommonLightText(
                  title: "TODAY",
                  fontSize: 10.5,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                  color: const Color.fromRGBO(148, 163, 184, 1),
                ),
                const SizedBox(height: 10),
                CommonWhitCard(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child:  Column(
                    children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Revision()),
                        );
                      },
                     child: NotificationItem(
                        title: "24 questions are due for revision",
                        subtitle: "Study · 20 min ago",
                        icon: Icons.autorenew,
                        iconBackground: Color.fromRGBO(250, 243, 228, 1),
                        iconColor: Color.fromRGBO(138, 96, 0, 1),
                        isUnread: true,
                        showDot: true,
                        showDivider: true,
                      ),
                    ),

                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>Revision(),),);
                        },
                     child:  NotificationItem(
                        title: "Today's Current Affairs quiz is available",
                        subtitle: "Content · 4 hours ago",
                        icon: Icons.article_outlined,
                        isUnread: true,
                        showDot: true,
                      ),),
                    ],
                  ),
                ),

                const SizedBox(height: 22),
                CommonLightText(
                  title: "YESTERDAY",
                  fontSize: 10.5,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                  color: const Color.fromRGBO(148, 163, 184, 1),
                ),

                const SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CoursePlayer()),);
                  },
                child:  CommonWhitCard(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: Column(
                    children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>PreparationView(),),);
                      },
                      child: NotificationItem(
                        title:
                            "Your weekly report is ready — preparation score up 6 points",
                        subtitle: "Results · yesterday",
                        icon: Icons.analytics_outlined,
                        iconBackground: Color.fromRGBO(236, 247, 241, 1),
                        iconColor: Color.fromRGBO(25, 122, 85, 1),
                        showDivider: true,
                      ),),

                      NotificationItem(
                        title:
                            "Recording of সন্ধি doubt clearing class is now available",
                        subtitle: "Courses · yesterday",
                        icon: Icons.play_arrow_outlined,
                      ),
                    ],
                  ),
                ),),

                const SizedBox(height: 22),
                CommonLightText(
                  title: "EARLIER",
                  fontSize: 10.5,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                  color: const Color.fromRGBO(148, 163, 184, 1),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Membership(),),);
                  },
                  child: CommonWhitCard(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: const Column(
                    children: [
                      NotificationItem(
                        title: "Membership renews in 91 days",
                        subtitle: "Account · 3 days ago",
                        icon: Icons.workspace_premium_outlined,
                        iconBackground: Color.fromRGBO(250, 243, 228, 1),
                        iconColor: Color.fromRGBO(138, 96, 0, 1),
                      ),
                    ],
                  ),
                ),),
                const SizedBox(height: 22),

                CommonWhitCard(
                  padding: const EdgeInsets.all(17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.notifications_none,
                            size: 19,
                            color: Color.fromRGBO(11, 32, 51, 1),
                          ),
                          const SizedBox(width: 10),
                          CommonBoldText(
                            title: "Delivery channels",
                            fontSize: 13.5,
                            letterSpacing: -0.27,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),

                      Row(
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonBoldText(
                                  title: "Push",
                                  fontSize: 13,
                                  color: Color.fromRGBO(51, 65, 85, 1),
                                  fontWeight: FontWeight.w600,
                                  height: 1.2,
                                ),
                                SizedBox(height: 4),
                                CommonLightText(
                                  title: "On this device",
                                  fontSize: 11,
                                  color: Color.fromRGBO(148, 163, 184, 1),
                                ),
                              ],
                            ),
                          ),

                          Switch(
                            value: pushEnabled,
                            onChanged: (value) {
                              setState(() {
                                pushEnabled = value;
                              });
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonBoldText(
                                  title: "Email",
                                  fontSize: 13,
                                  color: Color.fromRGBO(51, 65, 85, 1),
                                  fontWeight: FontWeight.w600,
                                  height: 1.2,
                                ),
                                SizedBox(height: 4),
                                CommonLightText(
                                  title: "Weekly report & receipts",
                                  fontSize: 11,
                                  color: Color.fromRGBO(148, 163, 184, 1),
                                ),
                              ],
                            ),
                          ),

                          Switch(
                            value: emailEnabled,
                            onChanged: (value) {
                              setState(() {
                                emailEnabled = value;
                              });
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 14),
                      Row(
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonBoldText(
                                  title: "SMS",
                                  fontSize: 13,
                                  color: Color.fromRGBO(51, 65, 85, 1),
                                  fontWeight: FontWeight.w600,
                                  height: 1.2,
                                ),
                                SizedBox(height: 4),
                                CommonLightText(
                                  title: "Live tests only",
                                  fontSize: 11,
                                  color: Color.fromRGBO(148, 163, 184, 1),
                                ),
                              ],
                            ),
                          ),

                          Switch(
                            value: smsEnabled,
                            onChanged: (value) {
                              setState(() {
                                smsEnabled = value;
                              });
                            },
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
      ),
    );
  }
}
