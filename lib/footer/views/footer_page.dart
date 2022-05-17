import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isMobileView(context: context))
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: socialWidget(l10n: l10n),
          )
        else
          const SizedBox(),
        TextButton(
          onPressed: () => appsLaunchGivenUrl(
            urlToLaunch: l10n.socialGyagueSonamGithubProfile,
          ),
          child: Text(
            l10n.footerBuiltByText,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        TextButton(
          onPressed: () => appsLaunchGivenUrl(
            urlToLaunch: l10n.socialBrittanyGithubProfile,
          ),
          child: Text(
            l10n.footerDesignByText,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
