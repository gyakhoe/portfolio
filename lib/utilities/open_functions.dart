import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
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
