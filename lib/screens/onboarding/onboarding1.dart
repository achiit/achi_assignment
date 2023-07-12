import 'package:achi_assignment/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
              ),
              SvgPicture.asset("assets/onboarding1.svg"),
              SizedBox(
                height: 35,
              ),
              Text(
                "Create Your Own Plate",
                style: GoogleFonts.lexend(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Create unforgettable memories with our unique feature to curate your favorite cuisines and food, tailored to your special occasion.",
                softWrap: true,
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.lexend(fontSize: 16, color: Color(0xff7B7B7B)),
              ),
              SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      )),
    );
    ;
  }
}
