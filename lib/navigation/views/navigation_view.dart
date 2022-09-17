import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

List<Widget> navItems({required BuildContext context}) {
  final l10n = context.l10n;
  final items = <Widget>[];
  if (isMobileView(context: context)) {
    items.add(
      DrawerHeader(
        padding: EdgeInsets.zero,
        child: DrawerHeader(
          decoration: const BoxDecoration(),
          child: Image.asset(
            l10n.aboutMeImage,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
    for (final item in _navItemToDisplay(context: context)) {
      items.add(item);
    }
  } else {
    for (final item in _navItemToDisplay(context: context)) {
      items.add(item);
    }
  }
  items.add(navResumeButton(context: context));
  return items;
}

List<Widget> _navItemToDisplay({required BuildContext context}) {
  final l10n = context.l10n;
  return [
    _navItem(textToDisplay: l10n.navAboutTitle, context: context),
    _navItem(textToDisplay: l10n.navExperienceTitle, context: context),
    _navItem(textToDisplay: l10n.navWorkTitle, context: context),
    _navItem(textToDisplay: l10n.navContactTitle, context: context),
  ];
}

Widget _navItem({
  required String textToDisplay,
  required BuildContext context,
}) {
  return isMobileView(context: context)
      ? ListTile(
          title: Text(
            textToDisplay,
            style: _homeNavTextStyle(),
          ),
          onTap: () {},
        )
      : TextButton(
          onPressed: () {},
          child: Text(
            textToDisplay,
            style: _homeNavTextStyle(),
          ),
        );
}

TextStyle _homeNavTextStyle() {
  return const TextStyle(
    color: Colors.white,
  );
}

Widget navResumeButton({required BuildContext context}) {
  final l10n = context.l10n;

  if (isMobileView(context: context)) {
    return ListTile(
      title: Text(
        l10n.navResumeTitle,
        style: _homeNavTextStyle(),
      ),
      onTap: () {},
    );
  } else {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Text(
          l10n.navResumeTitle,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
