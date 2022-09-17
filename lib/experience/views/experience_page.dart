import 'package:flutter/material.dart';
import 'package:portfolio/experience/views/experience_desktop_view.dart';
import 'package:portfolio/experience/views/experience_mobile_view.dart';
import 'package:portfolio/experience/views/experience_tab_view.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/responsive_view.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({
    Key? key,
    required this.l10n,
  }) : super(key: key);
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResponsiveView(
      mobileView: ExperienceMobileView(l10n: l10n),
      tabView: ExperienceTabView(l10n: l10n),
      desktopView: ExperienceDesktopView(l10n: l10n),
    );
  }
}
