import 'package:achi_assignment/screens/onboarding/onboarding_main.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple, /* fontFamily: "Gerbil" */
      ),
      home: const OnboardingScreen(),
    );
  }
}
