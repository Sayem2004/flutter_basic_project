
import "package:flutter/material.dart";

import "common/back_header.dart";
import "common/boldText.dart";
import "common/lightText.dart";

class AiMentorView extends StatefulWidget {
  const AiMentorView({super.key});

  @override
  State<AiMentorView> createState() => _AiMentorViewState();
}

class _AiMentorViewState extends State<AiMentorView> {
  final TextEditingController messageController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  final List<Map<String, String>> messages = [
    {
      "type": "user",
      "message": "এই প্রশ্নে আমার উত্তর ভুল কেন হলো?",
    },
    {
      "type": "mentor",
      "message":
      "আপনি ‘রূপতত্ত্ব’ বেছেছিলেন। রূপতত্ত্বে শব্দ গঠন ও প্রত্যয় আলোচিত হয়, কিন্তু সন্ধি হলো দুই ধ্বনির মিলন — তাই এটি ধ্বনিতত্ত্বের বিষয়।",
    },
  ];

  @override
  void dispose() {
    messageController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void sendMessage() {
    String message = messageController.text.trim();

    if (message.isEmpty) return;

    setState(() {
      messages.add({
        "type": "user",
        "message": message,
      });
    });

    messageController.clear();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void useQuickAction(String title) {
    setState(() {
      messages.add({
        "type": "user",
        "message": title,
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: Column(
          children: [
            // Header

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 12),
              child: Row(
                children: [
                  Expanded(
                    child: BackHeader(
                      title: "AI Mentor",
                      subtitle: "Context: বাংলা ব্যাকরণ · সন্ধি",
                      subtitleColor:
                      const Color.fromRGBO(100, 116, 139, 1),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(252, 245, 228, 1),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: const CommonLightText(
                      title: "Beta",
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(138, 96, 0, 1),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.fromLTRB(20, 14, 20, 10),
                children: [
                  for (int i = 0; i < messages.length; i++)
                    Align(
                      alignment: messages[i]["type"] == "user"
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth:
                          MediaQuery.of(context).size.width * 0.84,
                        ),
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 13,
                        ),
                        decoration: BoxDecoration(
                          color: messages[i]["type"] == "user"
                              ? const Color.fromRGBO(11, 32, 51, 1)
                              : const Color.fromRGBO(255, 255, 255, 1),
                          border: messages[i]["type"] == "user"
                              ? null
                              : Border.all(
                            color: const Color.fromRGBO(
                              232, 234, 240, 1,
                            ),
                          ),
                          borderRadius: messages[i]["type"] == "user"
                              ? const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(6),
                          )
                              : const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(18),
                          ),
                        ),
                        child: CommonLightText(
                          title: messages[i]["message"]!,
                          fontSize: 14,
                          height: 1.75,
                          color: messages[i]["type"] == "user"
                              ? const Color.fromRGBO(255, 255, 255, 1)
                              : const Color.fromRGBO(31, 41, 55, 1),
                        ),
                      ),
                    ),

                  // Quick Actions

                  if (messages.length == 2)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          spacing: 7,
                          runSpacing: 7,
                          children: [
                            _quickAction("Teach this topic"),
                            _quickAction("Revision notes"),
                            _quickAction("5 practice questions"),
                          ],
                        ),
                      ),
                    ),


                  Container(
                    width: 72,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 11,
                      vertical: 14,
                    ),
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(232, 234, 240, 1),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _TypingDot(),
                        _TypingDot(),
                        _TypingDot(),
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(13),
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(252, 245, 228, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const CommonLightText(
                      title:
                      "Mentor explains and teaches. It does not predict exam questions or invent facts — flag anything that looks wrong.",
                      fontSize: 12.5,
                      height: 1.55,
                      color: Color.fromRGBO(92, 66, 0, 1),
                    ),
                  ),
                ],
              ),
            ),

            // Message Input

            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(249, 251, 255, 1),
                border: Border(
                  top: BorderSide(
                    color: Color.fromRGBO(238, 240, 245, 1),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 46,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(226, 230, 238, 1),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: messageController,
                        onSubmitted: (value) => sendMessage(),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                        decoration: const InputDecoration(
                          hintText: "Ask about this topic...",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(148, 163, 184, 1),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 6),

                  InkWell(
                    onTap: sendMessage,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(11, 32, 51, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 19,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _quickAction(String title) {
    return InkWell(
      onTap: () {
        useQuickAction(title);
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 11,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(243, 245, 249, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: CommonBoldText(
          title: title,
          fontSize: 12,
          color: const Color.fromRGBO(11, 32, 51, 1),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _TypingDot extends StatelessWidget {
  const _TypingDot();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(148, 163, 184, 1),
        shape: BoxShape.circle,
      ),
    );
  }
}
