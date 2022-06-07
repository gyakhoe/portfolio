import 'package:flutter/material.dart';
import 'package:portfolio/home/views/home_content_view.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/navigation/views/navigation_view.dart';

class HometabView extends StatelessWidget {
  const HometabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColorDark,
        child: ListView(
          children: navItems(context: context),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          l10n.navTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const HomeContentView(),
      ),
    );
  }
}
