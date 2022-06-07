import 'package:flutter/material.dart';
import 'package:portfolio/experiance/views/components/experiance_detail.dart';
import 'package:portfolio/l10n/l10n.dart';

class ExperianceDesktopView extends StatelessWidget {
  const ExperianceDesktopView({Key? key, required this.l10n}) : super(key: key);

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        Row(
          children: [
            const Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.white,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ExperianceDetail(context: context, l10n: l10n),
            )
          ],
        )
      ],
    );
  }
}
