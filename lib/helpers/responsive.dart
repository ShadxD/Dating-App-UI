// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';

int smallScreenWidth = 852;
int largeScreenWidth = 1200;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget(
      {super.key,
      required this.largeScreen,
      required this.mediumScreen,
      required this.smallScreen});

  static bool isSmallscreen(BuildContext, context) {
    return MediaQuery.of(context).size.width < smallScreenWidth;
  }

  static bool isLargescreen(BuildContext, context) {
    return MediaQuery.of(context).size.width > largeScreenWidth;
  }

  static bool isMediumscreen(BuildContext, context) {
    return MediaQuery.of(context).size.width >= smallScreenWidth &&
        MediaQuery.of(context).size.width > largeScreenWidth;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      if (maxWidth > largeScreenWidth) {
        return largeScreen;
      } else if (maxWidth >= smallScreenWidth && maxWidth <= largeScreenWidth) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
