import 'package:flutter/material.dart';
import 'package:portfolio/home/views/home_desktop_view.dart';
import 'package:portfolio/home/views/home_mobile_view.dart';
import 'package:portfolio/home/views/home_tab_view.dart';
import 'package:portfolio/utilities/responsive_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobileView: HomeMobileView(),
      tabView: HometabView(),
      desktopView: HomeDesktopView(),
    );
  }
}
