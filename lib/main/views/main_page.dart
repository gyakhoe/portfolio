import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Theme.of(context).primaryColorDark,
        margin: isMobileView(context: context)
            ? const EdgeInsets.all(10)
            : const EdgeInsets.symmetric(horizontal: 100),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              l10n.mainTitle,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                  ),
            ),
            Text(
              l10n.mainNameTitle,
              style: isMobileView(context: context)
                  ? Theme.of(context).textTheme.headline2?.copyWith(
                        color: Colors.white,
                      )
                  : Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                l10n.mainWorkTitle,
                style: isMobileView(context: context)
                    ? Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.white)
                    : Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                          letterSpacing: 10,
                        ),
              ),
            ),
            Text(
              l10n.mainWorkDetailTitle,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.white,
                  ),
            ),
            const SizedBox(
              height: 30,
            ),
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
                  style: isMobileView(context: context)
                      ? Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white)
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: Colors.white,
                          ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
