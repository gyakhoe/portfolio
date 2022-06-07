import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';
import 'package:portfolio/work/views/components/additional_projects.dart';
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
  return MediaQuery.of(context).size.width <= AppConfiguration.kTabletMaxWidth;
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

List<Widget> additionalProjects(
  BuildContext context,
  AppLocalizations l10n,
) {
  return <Widget>[
    AdditionalProject(
      context: context,
      projectIcon: Icons.voice_chat_outlined,
      projectUrl: l10n.workVoiceRecorderUrl,
      projectName: l10n.workVoiceRecorderTitle,
      projectDetail: l10n.workVoiceRecorderDetail,
      technologies: l10n.workVoiceRecorderTechnologies,
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.folder_outlined,
      projectUrl: l10n.workAuthBlocUrl,
      projectName: l10n.workAuthBlocTitle,
      projectDetail: l10n.workAuthBlocDetail,
      technologies: l10n.workAuthBlocTechnologies,
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.image_outlined,
      projectUrl: l10n.workGifMakerUrl,
      projectName: l10n.workGifMakerTitle,
      projectDetail: l10n.workGifMakerDetail,
      technologies: l10n.workGifMakerTechnologies,
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.chat_outlined,
      projectUrl: l10n.workFlutterChatUrl,
      projectName: l10n.workFlutterChatTitle,
      projectDetail: l10n.workFlutterChatDetail,
      technologies: l10n.workFlutterChatTechnologies,
    )
  ];
}
