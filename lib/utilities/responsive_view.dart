import 'package:flutter/material.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';

class RespnsiveView extends StatelessWidget {
  const RespnsiveView({
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
        if (constraints.maxWidth < AppConfiguration.kMobileMaxWidth) {
          return mobileView;
        } else if (constraints.maxWidth > AppConfiguration.kMobileMaxWidth &&
            constraints.maxWidth < AppConfiguration.kTabletMaxWidth) {
          return tabView;
        } else {
          return desktopView;
        }
      },
    );
  }
}
