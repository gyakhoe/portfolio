import 'package:flutter/material.dart';
import 'package:portfolio/about/views/about_desktop_view.dart';
import 'package:portfolio/about/views/about_mobile_view.dart';
import 'package:portfolio/about/views/about_tab_view.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/responsive_view.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
    required this.l10n,
  }) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResponsiveView(
      mobileView: AboutMobileView(l10n: l10n),
      tabView: AboutMeTabView(l10n: l10n),
      desktopView: AboutMeDekstopView(l10n: l10n),
    );
  }
}
