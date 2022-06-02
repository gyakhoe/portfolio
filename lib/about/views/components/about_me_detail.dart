import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class AboutMeDetail extends StatelessWidget {
  const AboutMeDetail({
    Key? key,
    required this.context,
    required this.l10n,
  }) : super(key: key);

  final BuildContext context;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMobileView(context: context)
          ? MediaQuery.of(context).size.width - 20
          : MediaQuery.of(context).size.width * 0.6,
      padding: const EdgeInsets.all(5),
      child: Center(
        child: Text(
          l10n.aboutMeDetail,
          style: isMobileView(context: context)
              ? Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.white, fontSize: 15)
              : Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
