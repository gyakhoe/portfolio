import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => appsLaunchGivenUrl(
              urlToLaunch: l10n.githubProejctUrl,
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
      ),
    );
  }
}
