import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';
import 'package:portfolio/utilities/open_functions.dart';

class MainMobileView extends StatelessWidget {
  const MainMobileView({Key? key, required AppLocalizations l10n})
      : _l10n = l10n,
        super(key: key);
  final AppLocalizations _l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(kMobileDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _l10n.mainTitle,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                ),
          ),
          Text(
            _l10n.mainNameTitle,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              _l10n.mainWorkTitle,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
            ),
          ),
          Text(
            _l10n.mainWorkDetailTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 30),
          Row(
            children: socialWidget(l10n: _l10n),
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
              urlToLaunch: _l10n.workYoutubeUrl,
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                _l10n.mainYoutubeButtonTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
