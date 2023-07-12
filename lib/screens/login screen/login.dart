import 'package:achi_assignment/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/login page.svg",
                      width: screenWidth * 1, // Adjust the width proportionally
                    ),
                    Positioned(
                      top: screenHeight *
                          0.05, // Adjust the top position proportionally
                      right: screenWidth *
                          0.31, // Adjust the right position proportionally
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/logo.svg'),
                          Text(
                            "CraftMyPlate",
                            style: GoogleFonts.lexend(
                              color: Colors.white,
                              fontSize: screenWidth *
                                  0.04, // Adjust the font size proportionally
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height:
                      screenHeight * 0.05, // Adjust the height proportionally
                ),
                Padding(
                  padding: EdgeInsets.all(
                      screenWidth * 0.08), // Adjust the padding proportionally
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Login or Signup",
                        style: GoogleFonts.lexend(
                          color: Color(0xff787878),
                          fontSize: screenWidth *
                              0.035, // Adjust the font size proportionally
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth *
                          0.08), // Adjust the padding proportionally
                  child: PhoneNumberTextField(),
                ),
                SizedBox(
                  height:
                      screenHeight * 0.02, // Adjust the height proportionally
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(screenWidth * 0.9,
                        screenHeight * 0.06), // Adjust the size proportionally
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth *
                          0.02), // Adjust the border radius proportionally
                    ),
                    primary:
                        Color(0xFF6318AF), // Set background color to #6318AF
                  ),
                  child: Text(
                    "Continue",
                    style: GoogleFonts.lexend(
                      color: Colors.white,
                      fontSize: screenWidth *
                          0.035, // Adjust the font size proportionally
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom:
                      screenHeight * 0.02), // Adjust the padding proportionally
              child: Text(
                "By continuing, you agree to our\nTerms of Service Privacy Policy",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexend(
                  color: Color(0xff7B7B7B),
                  fontSize: screenWidth *
                      0.035, // Adjust the font size proportionally
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
