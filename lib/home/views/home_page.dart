import 'package:flutter/material.dart';
import 'package:portfolio/header/views/side_header_page.dart';
import 'package:portfolio/home/views/home_content_view.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/navigation/views/navigation_view.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColorDark,
        child: ListView(children: navItems(context: context)),
      ),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width <= kMobileMaxWidth
            ? 56
            : MediaQuery.of(context).size.width <= kTabletMaxWidth
                ? 86
                : 100,
        backgroundColor: Theme.of(context).primaryColorDark,
        automaticallyImplyLeading:
            MediaQuery.of(context).size.width <= kTabletMaxWidth,
        title: Text(
          l10n.navTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: MediaQuery.of(context).size.width <= kTabletMaxWidth
            ? []
            : navItems(context: context),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            const HomeContentView(),
            if (MediaQuery.of(context).size.width >= kTabletMaxWidth)
              Align(
                alignment: Alignment.bottomLeft,
                child: SiderHeaderPage(
                  isEmailHeader: false,
                  alignment: Alignment.bottomLeft,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
            if (MediaQuery.of(context).size.width >= kTabletMaxWidth)
              Align(
                alignment: Alignment.bottomRight,
                child: SiderHeaderPage(
                  isEmailHeader: true,
                  alignment: Alignment.bottomRight,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
