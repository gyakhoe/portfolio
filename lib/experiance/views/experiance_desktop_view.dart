import 'package:flutter/material.dart';
import 'package:portfolio/experiance/views/components/experiance_detail.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/app_cinfiguration.dart';

class ExperianceDesktopView extends StatelessWidget {
  const ExperianceDesktopView({Key? key, required this.l10n}) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDesktopHorizontalPadding,
        vertical: kDesktopVerticalPadding,
      ),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                l10n.experianceTitle,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 20,
                    endIndent: 10,
                  ),
                ),
              ),
            ],
          ),
          ExperianceDetail(context: context, l10n: l10n),
        ],
      ),
    );
  }
}
