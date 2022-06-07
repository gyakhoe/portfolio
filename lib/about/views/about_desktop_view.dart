import 'package:flutter/material.dart';
import 'package:portfolio/about/views/components/about_me_detail.dart';
import 'package:portfolio/about/views/components/about_me_image.dart';
import 'package:portfolio/l10n/l10n.dart';

class AboutMeDekstopView extends StatelessWidget {
  const AboutMeDekstopView({
    Key? key,
    required this.l10n,
  }) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          l10n.aboutMeTitle,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.white),
        ),
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 2,
            indent: 20,
            endIndent: 100,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutMeDetail(context: context, l10n: l10n),
            AboutMeImage(context: context, l10n: l10n),
          ],
        )
      ],
    );
  }
}
