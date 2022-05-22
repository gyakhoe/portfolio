import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class MainTabView extends StatelessWidget {
  const MainTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          l10n.mainTitle,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
              ),
        ),
        Text(
          l10n.mainNameTitle,
          style: Theme.of(context)
              .textTheme
              .headline2
              ?.copyWith(color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            l10n.mainWorkTitle,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.white,
                  letterSpacing: 10,
                ),
          ),
        ),
        Text(
          l10n.mainWorkDetailTitle,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.white,
              ),
        ),
        const SizedBox(height: 30),
        Row(
          children: socialWidget(l10n: l10n),
        ),
        const SizedBox(height: 30),
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.greenAccent,
              width: 4,
            ),
          ),
          onPressed: () => appsLaunchGivenUrl(
            urlToLaunch: l10n.workYoutubeUrl,
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              l10n.mainYoutubeButtonTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
