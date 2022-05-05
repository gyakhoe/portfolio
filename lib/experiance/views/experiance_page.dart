import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';

class ExperiancePage extends StatelessWidget {
  const ExperiancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      padding: const EdgeInsets.all(50),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Text(
                  l10n.experianceTitle,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
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
                      endIndent: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerRight,
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
                  child: Container(
                    margin: const EdgeInsets.all(50),
                    padding: const EdgeInsets.all(50),
                    child: ListView(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          color: Colors.grey,
                          child: Text(
                            l10n.presentExperiance,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            l10n.experiance2019,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          color: Colors.grey,
                          child: Text(
                            l10n.experiance2016,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            l10n.experiance2012,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
