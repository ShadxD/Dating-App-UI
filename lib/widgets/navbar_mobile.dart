import 'package:dating_app/helpers/style.dart';
import 'package:flutter/material.dart';

Widget mobileNavbar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: active,
        ),
      ),
      backgroundColor: Colors.transparent,
      title: Image.asset('assets/images/logo.png'),
      centerTitle: true,
      elevation: 0,
    );
