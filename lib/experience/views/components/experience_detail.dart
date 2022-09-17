import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class ExperienceDetail extends StatelessWidget {
  const ExperienceDetail({
    Key? key,
    required this.context,
    required this.l10n,
  }) : super(key: key);

  final BuildContext context;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isMobileView(context: context)
          ? const EdgeInsets.all(5)
          : const EdgeInsets.all(50),
      padding: isMobileView(context: context)
          ? const EdgeInsets.all(5)
          : const EdgeInsets.all(50),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey,
            child: Text(
              l10n.experiencePresent,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              l10n.experience2019,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey,
            child: Text(
              l10n.experience2016,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              l10n.experienceStudy2016,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey,
            child: Text(
              l10n.experience2012,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
