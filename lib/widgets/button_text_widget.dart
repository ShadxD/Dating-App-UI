import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonText extends StatelessWidget {
  final String mainText;
  final String secondaryText;
  const ButtonText(
      {super.key, required this.mainText, required this.secondaryText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: '$mainText \n'),
        TextSpan(
            text: secondaryText,
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 16))
      ], style: GoogleFonts.roboto(fontSize: 58, fontWeight: FontWeight.bold)),
    );
  }
}
