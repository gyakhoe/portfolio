import 'package:flutter/material.dart';
import 'package:portfolio/about/views/components/about_me_image.dart';

import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';

class AboutMeDekstopView extends StatelessWidget {
  const AboutMeDekstopView({
    Key? key,
    required this.l10n,
  }) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: kDesktopHorizontalPadding,
        vertical: kDesktopVerticalPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                l10n.aboutMeTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  l10n.aboutMeDetail,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white, fontSize: 18),
                ),
              ),
              AboutMeImage(
                context: context,
                l10n: l10n,
                height: 500,
                width: MediaQuery.of(context).size.width * 0.3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
