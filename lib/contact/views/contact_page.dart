import 'package:flutter/material.dart';
import 'package:portfolio/contact/views/contact_desktop_view.dart';
import 'package:portfolio/contact/views/contact_mobile_view.dart';
import 'package:portfolio/contact/views/contat_tab_view.dart';
import 'package:portfolio/l10n/l10n.dart';

import 'package:portfolio/utilities/responsive_view.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
    required this.l10n,
  }) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobileView: ContactMobileView(l10n: l10n),
      tabView: ContactTabView(l10n: l10n),
      desktopView: ContactDesktopView(l10n: l10n),
    );
  }
}
