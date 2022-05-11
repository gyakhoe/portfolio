import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/responsive_ui.dart';
import 'package:url_launcher/url_launcher.dart';

void appsLaunchGivenUrl({required String urlToLaunch}) {
  late String host;
  late String path;
  if (urlToLaunch.contains('/')) {
    host = urlToLaunch.substring(0, urlToLaunch.indexOf('/'));
    path = urlToLaunch.substring(urlToLaunch.indexOf('/'));
  } else {
    host = urlToLaunch;
    path = '/';
  }
  final uriToLaunch = Uri(scheme: 'https', host: host, path: path);
  launchUrl(uriToLaunch);
}

void appsSendEmail({required BuildContext context}) {
  final l10n = context.l10n;
  final emailURI = Uri(
    scheme: l10n.contactEmailScheme,
    path: l10n.contactUserEmail,
    query: l10n.contactEmailSubject,
  );
  launchUrl(emailURI);
}

bool isMobileView({required BuildContext context}) {
  return MediaQuery.of(context).size.width < ReponsiveUI.mobileMaxWidth;
}

List<Widget> socialWidget({
  required AppLocalizations l10n,
}) {
  return [
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: l10n.socialGithubUrl,
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.github),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: l10n.socialYoutubeUrl,
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.youtube),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: l10n.socialTwitterUrl,
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.twitter),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: l10n.socialInstagramUrl,
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.instagram),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: l10n.socialMediumURL,
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.medium),
    ),
  ];
}

FaIcon _socialIcon({required IconData icon}) {
  return FaIcon(
    icon,
    color: Colors.white,
  );
}
