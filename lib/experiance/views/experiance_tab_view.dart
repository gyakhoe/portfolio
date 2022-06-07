import 'package:flutter/material.dart';
import 'package:portfolio/experiance/views/components/experiance_detail.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';

class ExperianceTabView extends StatelessWidget {
  const ExperianceTabView({
    Key? key,
    required this.l10n,
  }) : super(key: key);
  final AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kTabDefaultPadding),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              l10n.experianceTitle,
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
            endIndent: kTabDefaultPadding,
            indent: kDesktopDefaultPadding,
          ),
          ExperianceDetail(
            context: context,
            l10n: l10n,
          ),
        ],
      ),
    );
  }
}
