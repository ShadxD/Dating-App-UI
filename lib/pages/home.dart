import 'package:dating_app/helpers/responsive.dart';
import 'package:dating_app/helpers/style.dart';
import 'package:dating_app/widgets/desktop.dart';
import 'package:dating_app/widgets/drawer.dart';
import 'package:dating_app/widgets/mobile.dart';
import 'package:flutter/material.dart';

import '../widgets/navbar_desktop.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 1000), child: const NavBar()),
      drawer: const SideMenu(),
      backgroundColor: bgcolor,
      body: const ResponsiveWidget(
          largeScreen: DesktopScreen(),
          mediumScreen: DesktopScreen(),
          smallScreen: MobileScreen()),
    );
  }
}
