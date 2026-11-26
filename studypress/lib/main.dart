import "package:flutter/material.dart";
import "app/views/splash_view.dart";
import 'app/views/today_view.dart';
import 'app/views/login_view.dart';
import 'app/views/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashView(),
     // home: TodayView(),
     // home: LoginView(),
      home: Onboarding(),
    );
  }
}