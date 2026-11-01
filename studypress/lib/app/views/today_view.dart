import "package:flutter/material.dart";
import "common.dart";

class TodayView extends StatefulWidget {
  const TodayView({super.key});

  @override
  State<TodayView> createState() => _TodayViewState();
}

class _TodayViewState extends State<TodayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 251, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 2, 20, 26),
          child: Column(
            children: const [

            ],
          ),
        ),
      ),
    );
  }
}