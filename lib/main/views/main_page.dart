import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/main/views/main_desktop_view.dart';
import 'package:portfolio/main/views/main_mobile_view.dart';
import 'package:portfolio/main/views/main_tab_view.dart';
import 'package:portfolio/utilities/responsive_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
    required this.l10n,
  }) : super(key: key);
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobileView: MainMobileView(
        l10n: l10n,
      ),
      tabView: MainTabView(
        l10n: l10n,
      ),
      desktopView: MainDesktopView(
        l10n: l10n,
      ),
    );
  }
}
