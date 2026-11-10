import "package:flutter/material.dart";
import '../tests_view.dart';

class SearchChapters extends StatelessWidget {
  const SearchChapters({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Chapters · 2",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.08,
              color: Color.fromRGBO(100, 116, 139, 1),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 14,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(238, 240, 245, 1),
                ),
              ),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "সন্ধি",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "বাংলা ব্যাকরণ · 62% read",
                        style: TextStyle(
                          fontSize: 11.5,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
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
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 14,
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "নিপাতনে সিদ্ধ সন্ধি",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "বাংলা ব্যাকরণ · not started",
                        style: TextStyle(
                          fontSize: 11.5,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  size: 17,
                  color: Color.fromRGBO(148, 163, 184, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchQuestions extends StatelessWidget {
  const SearchQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 22),
            child: Text(
              "Questions · 148",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.08,
                color: Color.fromRGBO(100, 116, 139, 1),
              ),
            ),
          ),

          // Question 1
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 14,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(238, 240, 245, 1),
                ),
              ),
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "‘সন্ধি’ ব্যাকরণের কোন অংশে আলোচিত হয়?",
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.45,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "BCS 41st Preliminary",
                        style: TextStyle(
                          fontSize: 11.5,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Question 2
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 14,
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "‘উৎ + চারণ’ সন্ধি করলে কী হয়?",
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.45,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Bank Officer 2023",
                        style: TextStyle(
                          fontSize: 11.5,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchMockTests extends StatelessWidget {
  const SearchMockTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 22),
            child: Text(
              "Mock tests · 3",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.08,
                color: Color.fromRGBO(100, 116, 139, 1),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 14,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(238, 240, 245, 1),
                ),
              ),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "বাংলা ব্যাকরণ · সন্ধি + সমাস",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "30 questions · 20 min",
                        style: TextStyle(
                          fontSize: 11.5,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=> TestsView()
                        ),
                    );
                  },
                child:  Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 9,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(11, 32, 51, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class SearchVocabulary extends StatelessWidget {
  const SearchVocabulary({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 22),
            child: Text(
              "Vocabulary · 1",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.08,
                color: Color.fromRGBO(100, 116, 139, 1),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 14,
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sandhi (linguistics)",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          color: Color.fromRGBO(17, 24, 39, 1),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Word card · saved",
                        style: TextStyle(
                          fontSize: 11.5,
                          color: Color.fromRGBO(148, 163, 184, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  size: 17,
                  color: Color.fromRGBO(148, 163, 184, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}