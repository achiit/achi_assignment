import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumberTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: Text(
              "+91", // Default country code
              style: GoogleFonts.lexend(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: TextField(
              maxLength: 10,
              decoration: InputDecoration(
                hintText: "Enter Phone Number",
                hintStyle: GoogleFonts.lexend(
                  color: Color(0xff787878),
                  fontSize: 14,
                ),
                counterText: "", // Hide the number of characters counter
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }
}
