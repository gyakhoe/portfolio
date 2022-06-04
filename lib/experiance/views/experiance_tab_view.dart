import 'package:flutter/material.dart';
import 'package:portfolio/experiance/views/components/experiance_detail.dart';
import 'package:portfolio/l10n/l10n.dart';

class ExperianceTabView extends StatelessWidget {
  const ExperianceTabView({
    Key? key,
    required this.l10n,
  }) : super(key: key);
  final AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Text(
            l10n.experianceTitle,
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(color: Colors.white),
          ),
        ),
        ExperianceDetail(
          context: context,
          l10n: l10n,
        ),
      ],
    );
  }
}
