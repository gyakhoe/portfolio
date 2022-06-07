import 'package:flutter/material.dart';
import 'package:portfolio/about/views/components/about_me_image.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';

class AboutMobileView extends StatelessWidget {
  const AboutMobileView({
    Key? key,
    required AppLocalizations l10n,
  })  : _l10n = l10n,
        super(key: key);

  final AppLocalizations _l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 900,
      padding: const EdgeInsets.all(kMobileDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _l10n.aboutMeTitle,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.white,
                ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              _l10n.aboutMeDetail,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                  ),
            ),
          ),
          AboutMeImage(
            context: context,
            l10n: _l10n,
            height: 400,
          )
          // AboutMeImage(context: context, l10n: _l10n),
        ],
      ),
    );
  }
}
