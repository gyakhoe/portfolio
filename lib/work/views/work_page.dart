import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      margin: isMobileView(context: context)
          ? const EdgeInsets.all(5)
          : const EdgeInsets.all(100),
      padding: isMobileView(context: context)
          ? const EdgeInsets.all(5)
          : const EdgeInsets.all(50),
      child: Column(
        children: [
          workHeading(
            context: context,
            title: l10n.workTitleText,
          ),
          project(
            isReversed: false,
            isMobile: isMobileView(context: context),
            context: context,
            imageAssetUrl: l10n.workTibtubeImageUrl,
            projectDetail: l10n.workTibtubeDetail,
            projectExternalUrl: l10n.workTibtubeUrl,
            projectName: l10n.workTibtubeProjectTitle,
            technologies: l10n.workTibtubeTechnologies,
          ),
          project(
            isReversed: true,
            isMobile: isMobileView(context: context),
            context: context,
            imageAssetUrl: l10n.workYoutubeImageUrl,
            projectDetail: l10n.workYoutubeDetail,
            projectExternalUrl: l10n.workYoutubeUrl,
            projectName: l10n.workYoutubeProjectName,
            technologies: l10n.workYoutubetechnologies,
          ),
          project(
            isReversed: false,
            isMobile: isMobileView(context: context),
            context: context,
            imageAssetUrl: l10n.workGithubImageUrl,
            projectDetail: l10n.workGithubDetail,
            projectExternalUrl: l10n.workGithubProejctUrl,
            projectName: l10n.workGithubProjectName,
            technologies: l10n.workGithubTechnologies,
          ),
          workHeading(
            context: context,
            title: l10n.workSecondaryTitleText,
            titleFlex: 3,
            dividerFlex: 4,
          ),
          Expanded(
            flex: isMobileView(context: context) ? 8 : 6,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: isMobileView(context: context)
                  ? ListView(
                      children: _additionalProjects(context, l10n),
                    )
                  : GridView.count(
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.5,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: _additionalProjects(context, l10n),
                    ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _additionalProjects(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return <Widget>[
      additionalProject(
        context: context,
        projectIcon: Icons.voice_chat_outlined,
        projectUrl: l10n.workVoiceRecorderUrl,
        projectName: l10n.workVoiceRecorderTitle,
        projectDetail: l10n.workVoiceRecorderDetail,
        technologies: l10n.workVoiceRecorderTechnologies,
      ),
      additionalProject(
        context: context,
        projectIcon: Icons.folder_outlined,
        projectUrl: l10n.workAuthBlocUrl,
        projectName: l10n.workAuthBlocTitle,
        projectDetail: l10n.workAuthBlocDetail,
        technologies: l10n.workAuthBlocTechnologies,
      ),
      additionalProject(
        context: context,
        projectIcon: Icons.image_outlined,
        projectUrl: l10n.workGifMakerUrl,
        projectName: l10n.workGifMakerTitle,
        projectDetail: l10n.workGifMakerDetail,
        technologies: l10n.workGifMakerTechnologies,
      ),
      additionalProject(
        context: context,
        projectIcon: Icons.chat_outlined,
        projectUrl: l10n.workFlutterChatUrl,
        projectName: l10n.workFlutterChatTitle,
        projectDetail: l10n.workFlutterChatDetail,
        technologies: l10n.workFlutterChatTechnologies,
      )
    ];
  }

  Container additionalProject({
    required BuildContext context,
    required IconData projectIcon,
    required String projectUrl,
    required String projectName,
    required String projectDetail,
    required String technologies,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(5, 5),
            color: Colors.white,
            blurRadius: 5,
            blurStyle: BlurStyle.outer,
          )
        ],
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                projectIcon,
                color: Colors.white,
                size: 30,
              ),
              IconButton(
                onPressed: () => appsLaunchGivenUrl(urlToLaunch: projectUrl),
                icon: const Icon(
                  Icons.link_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          Text(
            projectName,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          Wrap(
            children: [
              Text(
                projectDetail,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
          Text(
            technologies,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }

  Expanded workHeading({
    required BuildContext context,
    required String title,
    int? titleFlex,
    int? dividerFlex,
  }) {
    return Expanded(
      child: isMobileView(context: context)
          ? Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: Colors.white),
            )
          : Row(
              children: [
                Expanded(
                  flex: titleFlex ?? 4,
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: dividerFlex ?? 6,
                  child: const Divider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 20,
                    endIndent: 100,
                  ),
                ),
              ],
            ),
    );
  }

  Expanded project({
    required BuildContext context,
    required String projectName,
    required String imageAssetUrl,
    required String projectDetail,
    required String technologies,
    required String projectExternalUrl,
    required bool isReversed,
    required bool isMobile,
  }) {
    final l10n = context.l10n;
    return Expanded(
      flex: isMobile ? 2 : 4,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Opacity(
              opacity: isMobile ? 0.5 : 1,
              child: Align(
                alignment:
                    isReversed ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.greenAccent,
                        blurRadius: 3,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  height: 400,
                  width: 600,
                  child: Image.asset(
                    imageAssetUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Align(
              alignment:
                  isReversed ? Alignment.centerLeft : Alignment.centerRight,
              child: SizedBox(
                height: 300,
                width: 400,
                // color: Colors.purpleAccent,
                child: Column(
                  crossAxisAlignment: isReversed
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.workFeatureProjectTitle,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      projectName,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(10),
                      color: Colors.deepOrange,
                      child: Text(
                        projectDetail,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                    Text(
                      technologies,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () =>
                          appsLaunchGivenUrl(urlToLaunch: projectExternalUrl),
                      icon: const Icon(
                        Icons.rocket_launch,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
