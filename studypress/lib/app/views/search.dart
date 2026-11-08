import "package:flutter/material.dart";
import 'common/search_header.dart';
import "common/search_chapters.dart";
class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SafeArea(
        child: Column(
          children: [
            SearchHeader(),
            SearchChapters(),
            SearchQuestions(),
            SearchMockTests(),
            SearchVocabulary(),

          ],
        ),
      ),
    );
  }
}

