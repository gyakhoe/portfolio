import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/navigation/views/navigation_view.dart';
import 'package:portfolio/utilities/open_functions.dart';

class TopHeaderPage extends StatelessWidget implements PreferredSize {
  const TopHeaderPage({
    Key? key,
    required double height,
  })  : _height = height,
        super(key: key);
  final double _height;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AppBar(
      automaticallyImplyLeading: isMobileView(context: context),
      toolbarHeight: _height,
      backgroundColor: Theme.of(context).primaryColorDark,
      title: TextButton(
        child: Text(
          l10n.navTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: () {},
      ),
      actions: isMobileView(context: context)
          ? List.empty()
          : navItems(context: context),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(_height);
}
