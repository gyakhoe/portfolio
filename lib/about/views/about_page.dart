import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              l10n.aboutMeTitle,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.white,
                  ),
            ),
            Expanded(
              child: Divider(
                color: Colors.white,
                thickness: 2,
                indent: 20,
                endIndent: isMobileView(context: context) ? 20 : 100,
              ),
            ),
          ],
        ),
        if (isMobileView(context: context))
          _aboutMeDetail(context, l10n)
        else
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _aboutMeDetail(context, l10n),
              _aboutMeImage(context: context, l10n: l10n),
            ],
          ),
        if (isMobileView(context: context))
          _aboutMeImage(context: context, l10n: l10n),
      ],
    );
  }

  Container _aboutMeDetail(BuildContext context, AppLocalizations l10n) {
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

  Expanded _aboutMeImage({
    required BuildContext context,
    required AppLocalizations l10n,
  }) {
    return Expanded(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: 0.9,
              child: Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.greenAccent,
                    width: 5,
                  ),
                ),
              ),
            ),
          ),
          Align(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: 0.9,
              child: Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.redAccent,
                    width: 5,
                  ),
                ),
                child: Image.asset(
                  l10n.aboutMeImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
