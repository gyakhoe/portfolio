import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: isMobileView(context: context)
            ? MediaQuery.of(context).size.height - 10
            : MediaQuery.of(context).size.height - 100,
        width: MediaQuery.of(context).size.width,
        child: const _AboutView(),
      ),
    );
  }
}

class _AboutView extends StatelessWidget {
  const _AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      margin: isMobileView(context: context)
          ? const EdgeInsets.symmetric(horizontal: 10)
          : const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      l10n.aboutMeDetail,
                      style: isMobileView(context: context)
                          ? Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: Colors.white)
                          : Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              if (isMobileView(context: context))
                Container()
              else
                _aboutMeImage(l10n),
            ],
          ),
          if (isMobileView(context: context))
            _aboutMeImage(l10n)
          else
            Container(),
        ],
      ),
    );
  }

  Expanded _aboutMeImage(AppLocalizations l10n) {
    return Expanded(
      flex: 2,
      child: SizedBox(
        height: 400,
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
      ),
    );
  }
}
