import 'package:flutter/material.dart';
import 'package:nlw5/Home/home_page.dart';
import 'package:nlw5/Splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage()
    );
  }
}