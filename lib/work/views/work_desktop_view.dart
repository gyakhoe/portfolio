import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';
import 'package:portfolio/utilities/open_functions.dart';
import 'package:portfolio/work/views/components/project.dart';
import 'package:portfolio/work/views/components/work_heading.dart';

class WorkDesktopView extends StatelessWidget {
  const WorkDesktopView({
    Key? key,
    required this.l10n,
  }) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 1100,
        maxHeight: 1600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: kDesktopVerticalPadding,
        horizontal: kDesktopHorizontalPadding,
      ),
      child: Column(
        children: [
          WorkHeading(context: context, title: l10n.workTitleText),
          Project(
            context: context,
            projectName: l10n.workTibtubeProjectTitle,
            imageAssetUrl: l10n.workTibtubeImageUrl,
            projectDetail: l10n.workTibtubeDetail,
            technologies: l10n.workTibtubeTechnologies,
            featuredProjectTitle: l10n.workFeatureProjectTitle,
            projectExternalUrl: l10n.workTibtubeUrl,
            isReversed: false,
            isMobile: false,
          ),
          Project(
            context: context,
            featuredProjectTitle: l10n.workFeatureProjectTitle,
            projectName: l10n.workYoutubeProjectName,
            imageAssetUrl: l10n.workYoutubeImageUrl,
            projectDetail: l10n.workYoutubeImageUrl,
            technologies: l10n.workYoutubetechnologies,
            projectExternalUrl: l10n.workYoutubeUrl,
            isReversed: true,
            isMobile: false,
          ),
          Project(
            context: context,
            featuredProjectTitle: l10n.workFeatureProjectTitle,
            projectName: l10n.workGithubProjectName,
            imageAssetUrl: l10n.workGithubImageUrl,
            projectDetail: l10n.workGithubDetail,
            technologies: l10n.workGithubTechnologies,
            projectExternalUrl: l10n.workGifMakerUrl,
            isReversed: false,
            isMobile: false,
          ),
          WorkHeading(
            context: context,
            title: l10n.workSecondaryTitleText,
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
                children: additionalProjects(context, l10n),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
