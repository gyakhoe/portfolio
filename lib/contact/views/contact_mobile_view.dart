import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class ContactMobileView extends StatelessWidget {
  const ContactMobileView({
    Key? key,
    required this.l10n,
  }) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          l10n.contactTitle,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
              ),
        ),
        Padding(
          padding: const EdgeInsets.all(2),
          child: Text(
            l10n.contactSecondaryTitle,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: 700,
          child: Text(
            l10n.contactExplaination,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.white,
                  fontSize: 15,
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
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
