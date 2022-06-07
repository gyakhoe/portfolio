import 'package:flutter/material.dart';
import 'package:portfolio/footer/views/footer_desktop_view.dart';
import 'package:portfolio/footer/views/footer_mobile_view.dart';
import 'package:portfolio/footer/views/footer_tab_view.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/responsive_view.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({
    Key? key,
    required this.l10n,
  }) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobileView: FooterMobileView(l10n: l10n),
      tabView: FooterTabView(l10n: l10n),
      desktopView: FooterDesktopView(l10n: l10n),
    );
  }
}
