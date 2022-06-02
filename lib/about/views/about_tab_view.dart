import 'package:flutter/material.dart';
import 'package:portfolio/about/views/components/about_me_image.dart';
import 'package:portfolio/l10n/l10n.dart';

class AboutMeTabView extends StatelessWidget {
  const AboutMeTabView({
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
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Colors.white,
              ),
        ),
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          padding: const EdgeInsets.all(5),
          child: Text(
            l10n.aboutMeDetail,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: Colors.white, fontSize: 20),
          ),
        ),
        AboutMeImage(context: context, l10n: l10n),
      ],
    );
  }
}
