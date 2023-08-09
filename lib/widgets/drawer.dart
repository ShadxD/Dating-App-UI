import 'package:dating_app/helpers/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: active,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: Text(
              'Pricing',
              style: GoogleFonts.roboto(fontSize: 22, color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Divider(),
          ),
          InkWell(
            child: Text(
              'Login',
              style: GoogleFonts.roboto(fontSize: 22, color: Colors.white),
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Text('Copyright 2023 | Shad',
                style: GoogleFonts.roboto(fontSize: 14, color: Colors.white)),
          ))
        ],
      ),
    ));
  }
}
