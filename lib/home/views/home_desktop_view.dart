import 'package:flutter/material.dart';
import 'package:portfolio/header/views/side_header_page.dart';
import 'package:portfolio/home/views/home_content_view.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/navigation/views/navigation_view.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Theme.of(context).primaryColorDark,
        automaticallyImplyLeading: false,
        title: Text(
          l10n.navTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: navItems(context: context),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: const [
            HomeContentView(),
            Align(
              alignment: Alignment.bottomLeft,
              child: SiderHeaderPage(
                isEmailHeader: false,
                alignment: Alignment.bottomLeft,
                color: Colors.amber,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SiderHeaderPage(
                isEmailHeader: true,
                alignment: Alignment.bottomRight,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
