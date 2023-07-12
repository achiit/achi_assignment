import 'package:achi_assignment/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingThree extends StatefulWidget {
  const OnboardingThree({super.key});

  @override
  State<OnboardingThree> createState() => _OnboardingThreeState();
}

class _OnboardingThreeState extends State<OnboardingThree> {
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
              SvgPicture.asset("assets/onboarding3.svg"),
              SizedBox(
                height: 35,
              ),
              Text(
                "Personal Order Executive",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexend(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Embark on a personalized culinary journey with our dedicated one-to-one customer support, ensuring a seamless and satisfying experience every step of the way.",
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
