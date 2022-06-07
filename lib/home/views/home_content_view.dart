import 'package:flutter/material.dart';
import 'package:portfolio/about/views/about_page.dart';
import 'package:portfolio/contact/views/contact_page.dart';
import 'package:portfolio/experiance/views/experiance_page.dart';
import 'package:portfolio/footer/views/footer_page.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/main/views/main_page.dart';
import 'package:portfolio/utilities/open_functions.dart';
import 'package:portfolio/work/views/work_page.dart';

class HomeContentView extends StatelessWidget {
  const HomeContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      color: Theme.of(context).primaryColorDark,
      child: ListView(
        shrinkWrap: true,
        children: [
          AboutPage(l10n: l10n),
          MainPage(l10n: l10n),
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
