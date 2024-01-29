import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';
import 'package:portfolio/utilities/open_functions.dart';

class ContactDesktopView extends StatelessWidget {
  const ContactDesktopView({
    Key? key,
    required this.l10n,
  }) : super(key: key);
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.symmetric(
        horizontal: kDesktopHorizontalPadding,
        vertical: kDesktopVerticalPadding,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              l10n.contactTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              l10n.contactSecondaryTitle,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 20,
              right: 20,
            ),
            width: 700,
            child: Text(
              l10n.contactExplaination,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                  ),
            ),
          ),
          MaterialButton(
            hoverColor: Colors.deepOrange,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Colors.greenAccent,
                width: 2,
              ),
            ),
            onPressed: () {
              appsSendEmail(context: context);
              // launchUrlString(emailURI.toString());
            },
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  l10n.contactButtonText,
                  style: isMobileView(context: context)
                      ? Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white)
                      : Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.white,
                          ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
