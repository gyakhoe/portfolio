import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/responsive_view.dart';
import 'package:portfolio/work/views/work_desktop_view.dart';
import 'package:portfolio/work/views/work_mobile_view.dart';
import 'package:portfolio/work/views/work_tab_view.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({
    Key? key,
    required this.l10n,
  }) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobileView: WorkMobileView(l10n: l10n),
      tabView: WorkTabView(l10n: l10n),
      desktopView: WorkDesktopView(l10n: l10n),
    );
  }
}
