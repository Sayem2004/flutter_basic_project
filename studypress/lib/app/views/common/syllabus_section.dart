
import "package:flutter/material.dart";

class SyllabusSection extends StatefulWidget {
  const SyllabusSection({super.key});

  @override
  State<SyllabusSection> createState() => _SyllabusSectionState();
}

class _SyllabusSectionState extends State<SyllabusSection> {
  int expandedModuleIndex = 0;

  final List<Map<String, String>> modules = [
    {
      "module": "MODULE 01",
      "title": "Bangla Language & Grammar",
      "details": "8 lessons · 1h 40m",
    },
    {
      "module": "MODULE 02",
      "title": "English Foundation",
      "details": "10 lessons · 2h 15m",
    },
    {
      "module": "MODULE 03",
      "title": "Mathematics Basics",
      "details": "12 lessons · 3h 05m",
    },
    {
      "module": "MODULE 04",
      "title": "Bangladesh & International Affairs",
      "details": "9 lessons · 2h 20m",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "Syllabus",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.25,
            color: Color.fromRGBO(11, 32, 51, 1),
          ),
        ),

        const SizedBox(height: 12),

        ...List.generate(modules.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: _syllabusModule(index),
          );
        }),
      ],
    );
  }

  // Reusable Module Card
  Widget _syllabusModule(int index) {
    bool isExpanded = expandedModuleIndex == index;

    final module = modules[index];

    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        border: Border.all(
          color: const Color.fromRGBO(232, 234, 240, 1),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [

          // Module Header
          InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: () {
              setState(() {
                expandedModuleIndex =
                isExpanded ? -1 : index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 15,
              ),
              child: Row(
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          module["module"]!,
                          style: const TextStyle(
                            fontSize: 10.5,
                            height: 1,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.84,
                            color: Color.fromRGBO(150, 105, 10, 1),
                          ),
                        ),

                        const SizedBox(height: 7),

                        Text(
                          module["title"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            height: 1.25,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.21,
                            color: Color.fromRGBO(11, 32, 51, 1),
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          module["details"]!,
                          style: const TextStyle(
                            fontSize: 11.5,
                            height: 1.3,
                            color: Color.fromRGBO(100, 116, 139, 1),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Expand Arrow
                  AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 180),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 18,
                      color: Color.fromRGBO(100, 116, 139, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Expanded Content
          if (isExpanded)
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 14),
              child: Divider(
                height: 1,
                color: Color.fromRGBO(238, 240, 245, 1),
              ),
            ),
        ],
      ),
    );
  }
}
