import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    "Some Things I've built",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white),
                  ),
                ),
                const Expanded(
                  flex: 6,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 20,
                    endIndent: 100,
                  ),
                ),
              ],
            ),
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
      flex: 6,
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
                      onPressed: () => launchUrl(
                        Uri(
                          host: projectExternalUrl,
                        ),
                      ),
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
