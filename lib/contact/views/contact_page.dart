import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              l10n.whatNextContact,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              l10n.getInTouchContact,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
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
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
              final emailURI = Uri(
                scheme: 'mailto',
                path: 'gyague.sonam@gmail.com',
                query: 'subject=Hi! From your portfolio',
              );
              launchUrl(emailURI);
              // launchUrlString(emailURI.toString());
            },
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  l10n.contactButtonText,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
