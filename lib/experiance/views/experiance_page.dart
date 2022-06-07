import 'package:flutter/material.dart';
import 'package:portfolio/experiance/views/experiance_desktop_view.dart';
import 'package:portfolio/experiance/views/experiance_mobile_view.dart';
import 'package:portfolio/experiance/views/experiance_tab_view.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/responsive_view.dart';

class ExperiancePage extends StatelessWidget {
  const ExperiancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResponsiveView(
      mobileView: ExperianceMobileView(l10n: l10n),
      tabView: ExperianceTabView(l10n: l10n),
      desktopView: ExperianceDesktopView(l10n: l10n),
    );
  }
}
