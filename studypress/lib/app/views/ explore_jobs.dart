import 'package:flutter/material.dart';
import 'common/back_header.dart';
import 'common/search_header.dart';

class ExploreJobsView extends StatefulWidget {
  const ExploreJobsView({super.key});

  @override
  State<ExploreJobsView> createState() => _ExploreJobsViewState();
}

class _ExploreJobsViewState extends State<ExploreJobsView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(249, 251, 255, 1),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackHeader(title: "Explore Jobs",subtitle: "218 circulars · 12 closing this week",subtitleColor: Color.fromRGBO(100, 116, 139, 1),),





                ],
              ),

              
            )
        ),
      ),
    );
  }
}
