import 'package:flutter/material.dart';
import 'package:portfolio/about/views/about_page.dart';
import 'package:portfolio/contact/views/contact_page.dart';
import 'package:portfolio/experiance/views/experiance_page.dart';
import 'package:portfolio/footer/views/footer_page.dart';
import 'package:portfolio/header/views/side_header_page.dart';
import 'package:portfolio/header/views/top_header_page.dart';
import 'package:portfolio/main/views/main_page.dart';
import 'package:portfolio/navigation/views/navigation_view.dart';
import 'package:portfolio/utilities/open_functions.dart';
import 'package:portfolio/work/views/work_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColorDark,
        child: ListView(
          children: navItems(context: context),
        ),
      ),
      appBar: TopHeaderPage(
        height: isMobileView(context: context) ? 56 : 80,
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _homeListView(context),
        // const TopHeaderPage(),
        if (!isMobileView(context: context))
          SiderHeaderPage(
            isEmailHeader: false,
            alignment: Alignment.bottomLeft,
            color: Theme.of(context).primaryColorDark,
          ),
        if (!isMobileView(context: context))
          SiderHeaderPage(
            isEmailHeader: true,
            alignment: Alignment.bottomRight,
            color: Theme.of(context).primaryColorDark,
          )
      ],
    );
  }

  Widget _homeListView(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      child: ListView(
        shrinkWrap: true,
        children: [
          _homeContent(
            content: const MainPage(),
            context: context,
          ),
          _homeContent(
            content: const AboutPage(),
            context: context,
          ),
          _homeContent(
            content: const ExperiancePage(),
            context: context,
            height: isMobileView(context: context)
                ? MediaQuery.of(context).size.height * 0.7
                : MediaQuery.of(context).size.height,
          ),
          _homeContent(
            content: const WorkPage(),
            height: MediaQuery.of(context).size.height * 2,
            context: context,
          ),
          _homeContent(
            content: const ContactPage(),
            context: context,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          _homeContent(
            content: const FooterPage(),
            context: context,
            height: isMobileView(context: context)
                ? MediaQuery.of(context).size.height * 0.3
                : MediaQuery.of(context).size.height * 0.1,
          )
        ],
      ),
    );
  }

  Widget _homeContent({
    required Widget content,
    required BuildContext context,
    Color? color,
    double? height,
  }) {
    //TODO: I have to move all the constraints from here to responsive layout.
    //TODO:  view specific port is required
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height ?? MediaQuery.of(context).size.height,
      padding: isMobileView(context: context)
          ? const EdgeInsets.all(10)
          : const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      color: color ?? Theme.of(context).primaryColorDark,
      child: Center(
        child: content,
      ),
    );
  }
}
