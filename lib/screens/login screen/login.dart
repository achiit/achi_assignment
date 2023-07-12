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
                      width: 450,
                    ),
                    Positioned(
                        top: 50,
                        right: 130,
                        child: Column(
                          children: [
                            SvgPicture.asset('assets/logo.svg'),
                            Text(
                              "CraftMyPlate",
                              style: GoogleFonts.lexend(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Login or Signup",
                        style: GoogleFonts.lexend(
                          color: Color(0xff787878),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: PhoneNumberTextField(),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(327, 44),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary:
                        Color(0xFF6318AF), // Set background color to #6318AF
                  ),
                  child: Text(
                    "Continue",
                    style: GoogleFonts.lexend(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                "By continuing, you agree to our\nTerms of Service Privacy Policy ",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexend(
                  color: Color(0xff7B7B7B),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
