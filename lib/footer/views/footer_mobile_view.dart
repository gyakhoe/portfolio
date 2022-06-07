import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';
import 'package:portfolio/utilities/open_functions.dart';

class FooterMobileView extends StatelessWidget {
  const FooterMobileView({
    Key? key,
    required this.l10n,
  }) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(kMobileDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: socialWidget(l10n: l10n),
          ),
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
          ),
        ],
      ),
    );
  }
}
