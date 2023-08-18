import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';
import '../helpers/style.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 450),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      children: [
                        const TextSpan(text: 'Get noticed for'),
                        TextSpan(
                            text: ' who',
                            style: GoogleFonts.roboto(color: active)),
                        const TextSpan(text: ' you are '),
                        TextSpan(
                            text: 'not what ',
                            style: GoogleFonts.roboto(color: active)),
                        const TextSpan(text: 'you look like.'),
                      ],
                      style: GoogleFonts.roboto(
                          fontSize: 28, fontWeight: FontWeight.bold))),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 550),
          child: Text(
            mainParagraph,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(letterSpacing: 1.5, height: 1.5),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
