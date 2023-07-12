import 'package:achi_assignment/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingTwo extends StatefulWidget {
  const OnboardingTwo({super.key});

  @override
  State<OnboardingTwo> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
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
              SvgPicture.asset("assets/onboarding2.svg"),
              SizedBox(
                height: 35,
              ),
              Text(
                "Exquisite Catering",
                style: GoogleFonts.lexend(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Experience culinary artistry like never before with our innovative and exquisite cuisine creations",
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
