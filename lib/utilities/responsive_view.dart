import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';

class ResponsiveView extends StatelessWidget {
  const ResponsiveView({
    Key? key,
    required this.mobileView,
    required this.tabView,
    required this.desktopView,
  }) : super(key: key);

  final Widget mobileView;
  final Widget tabView;
  final Widget desktopView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= kMobileMaxWidth) {
          log('Is mobile ${constraints.maxWidth}');
          return mobileView;
        } else if (constraints.maxWidth <= kTabletMaxWidth) {
          log('Is tab ${constraints.maxWidth}');
          return tabView;
        } else {
          log('Is desktop ${constraints.maxWidth}');
          return desktopView;
        }
      },
    );
  }
}
