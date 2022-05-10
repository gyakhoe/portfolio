import 'package:flutter/material.dart';
import 'package:portfolio/about/views/about_page.dart';
import 'package:portfolio/contact/views/contact_page.dart';
import 'package:portfolio/experiance/views/experiance_page.dart';
import 'package:portfolio/footer/views/footer_page.dart';
import 'package:portfolio/header/views/side_header_page.dart';
import 'package:portfolio/header/views/top_header_page.dart';
import 'package:portfolio/main/views/main_page.dart';
import 'package:portfolio/work/views/work_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
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
        const TopHeaderPage(),
        SiderHeaderPage(
          isEmailHeader: false,
          alignment: Alignment.bottomLeft,
          color: Theme.of(context).primaryColorDark,
        ),
        SiderHeaderPage(
          isEmailHeader: true,
          alignment: Alignment.bottomRight,
          color: Theme.of(context).primaryColorDark,
        )
      ],
    );
  }

  ListView _homeListView(BuildContext context) {
    return ListView(
      children: [
        _homeContent(
          content: const MainPage(),
          context: context,
          color: Theme.of(context).primaryColorDark,
        ),
        _homeContent(
          content: const AboutPage(),
          context: context,
          color: Theme.of(context).primaryColorDark,
        ),
        _homeContent(
          content: const ExperiancePage(),
          context: context,
          color: Theme.of(context).primaryColorDark,
        ),
        _homeContent(
          content: const WorkPage(),
          height: MediaQuery.of(context).size.height * 3,
          context: context,
          color: Theme.of(context).primaryColorDark,
        ),
        _homeContent(
          content: const ContactPage(),
          context: context,
          color: Theme.of(context).primaryColorDark,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        _homeContent(
          content: const FooterPage(),
          context: context,
          color: Theme.of(context).primaryColorDark,
          height: MediaQuery.of(context).size.height * 0.1,
        )
      ],
    );
  }

  Container _homeContent({
    required Widget content,
    required BuildContext context,
    required Color color,
    double? height,
  }) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: color,
      child: Center(
        child: content,
      ),
    );
  }
}
