import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: isMobileView(context: context)
              ? EdgeInsets.zero
              : const EdgeInsets.all(5),
          child: Text(
            l10n.contactTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white),
          ),
        ),
        Padding(
          padding: isMobileView(context: context)
              ? const EdgeInsets.symmetric(horizontal: 2)
              : const EdgeInsets.all(20),
          child: Text(
            l10n.contactSecondaryTitle,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        Container(
          padding: isMobileView(context: context)
              ? const EdgeInsets.symmetric(horizontal: 5)
              : const EdgeInsets.only(
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
          width: 700,
          child: Text(
            l10n.contactExplaination,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.white,
                  fontSize: isMobileView(context: context) ? 15 : 20,
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
                        .bodyText1
                        ?.copyWith(color: Colors.white)
                    : Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                        ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
