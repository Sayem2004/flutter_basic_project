
import "package:flutter/material.dart";
import "boldText.dart";
import "lightText.dart";

class RevisionSubjectList extends StatelessWidget {
  final List<RevisionSubject> subjects;

  const RevisionSubjectList({
    super.key,
    required this.subjects,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromRGBO(232, 234, 240, 1),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: List.generate(
          subjects.length,
              (index) {
            final subject = subjects[index];

            return Container(
              padding: const EdgeInsets.symmetric(vertical: 22),
              decoration: BoxDecoration(
                border: index == subjects.length - 1
                    ? null
                    : const Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(238, 240, 245, 1),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(243, 245, 249, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: CommonBoldText(
                      title: "×${subject.count}",
                      fontSize: 14,
                      color: const Color.fromRGBO(11, 32, 51, 1),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonBoldText(
                          title: subject.title,
                          fontSize: 16,
                          color: const Color.fromRGBO(17, 23, 31, 1),
                        ),

                        const SizedBox(height: 4),

                        CommonLightText(
                          title: subject.description,
                          fontSize: 12,
                          color: const Color.fromRGBO(100, 116, 139, 1),
                        ),
                      ],
                    ),
                  ),

                  const Icon(
                    Icons.chevron_right,
                    size: 17,
                    color: Color.fromRGBO(148, 163, 184, 1),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class RevisionSubject {
  final String title;
  final String description;
  final int count;

  const RevisionSubject({
    required this.title,
    required this.description,
    required this.count,
  });
}
