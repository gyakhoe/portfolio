import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      margin: const EdgeInsets.all(100),
      padding: const EdgeInsets.all(50),
      child: Column(
        children: [
          workHeading(
            context: context,
            title: "Some Things I've built",
          ),
          project(
            isReversed: false,
            context: context,
            imageAssetUrl: l10n.tibtubeImageUrl,
            projectDetail: l10n.tibtubeDetail,
            projectExternalUrl: l10n.tibtubeProejctUrl,
            projectName: l10n.tibtubeProjectName,
            technologies: l10n.technologiesInProeject,
          ),
          project(
            isReversed: true,
            context: context,
            imageAssetUrl: l10n.youtubeImageUrl,
            projectDetail: l10n.youtubeDetail,
            projectExternalUrl: l10n.youtubeProejctUrl,
            projectName: l10n.youtubeProjectName,
            technologies: l10n.technologiesInProeject,
          ),
          project(
            isReversed: false,
            context: context,
            imageAssetUrl: l10n.githubImageUrl,
            projectDetail: l10n.githubDetail,
            projectExternalUrl: l10n.githubProejctUrl,
            projectName: l10n.githubProjectName,
            technologies: l10n.technologiesInProeject,
          ),
          workHeading(
            context: context,
            title: 'Other note worthy projects',
            titleFlex: 3,
            dividerFlex: 4,
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: GridView.count(
                crossAxisSpacing: 10,
                childAspectRatio: 1.5,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  additionalProject(
                    context: context,
                    projectIcon: Icons.voice_chat_outlined,
                    projectUrl: l10n.addProjectVoiceUrl,
                    projectName: l10n.addProjectVoiceName,
                    projectDetail: l10n.addProjectVoiceDetail,
                    technologies: l10n.addProjectVoiceTechnologies,
                  ),
                  additionalProject(
                    context: context,
                    projectIcon: Icons.folder_outlined,
                    projectUrl: l10n.addProjectAuthBlocUrl,
                    projectName: l10n.addProjectAuthBlocName,
                    projectDetail: l10n.addProjectAuthBlocDetail,
                    technologies: l10n.addProjectAuthBlocTechnologies,
                  ),
                  additionalProject(
                    context: context,
                    projectIcon: Icons.image_outlined,
                    projectUrl: l10n.addProjectGifMakerUrl,
                    projectName: l10n.addProjectGifMakerName,
                    projectDetail: l10n.addProjectGifMakerDetail,
                    technologies: l10n.addProjectGifMakerTechnologies,
                  ),
                  additionalProject(
                    context: context,
                    projectIcon: Icons.chat_outlined,
                    projectUrl: l10n.addProjectChatAppUrl,
                    projectName: l10n.addProjectChatAppName,
                    projectDetail: l10n.addProjectChatAppDetail,
                    technologies: 'Dart HTML Ruby Swift',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
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
          Text(
            projectDetail,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.white,
                ),
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
      child: Row(
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
  }) {
    final l10n = context.l10n;
    return Expanded(
      flex: 4,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Align(
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
                      l10n.proejctTitle,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      projectName,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(10),
                      color: Colors.deepOrange,
                      child: Text(
                        projectDetail,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Colors.white,
                              fontSize: 15,
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
