import 'package:flutter/material.dart';
import 'package:portfolio/about/views/about_page.dart';
import 'package:portfolio/contact/views/contact_page.dart';
import 'package:portfolio/experiance/views/experiance_page.dart';
import 'package:portfolio/footer/views/footer_page.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/main/views/main_page.dart';
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
          MainPage(l10n: l10n),
          AboutPage(l10n: l10n),
          ExperiancePage(l10n: l10n),
          WorkPage(l10n: l10n),
          ContactPage(l10n: l10n),
          FooterPage(l10n: l10n),
        ],
      ),
    );
  }
}
