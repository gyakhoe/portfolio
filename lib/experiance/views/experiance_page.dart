import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';
import 'package:portfolio/utilities/open_functions.dart';

class ExperiancePage extends StatelessWidget {
  const ExperiancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      margin: isMobileView(context: context)
          ? const EdgeInsets.symmetric(horizontal: 10, vertical: 10)
          : const EdgeInsets.symmetric(horizontal: 100),
      padding: isMobileView(context: context)
          ? const EdgeInsets.all(5)
          : const EdgeInsets.all(50),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: isMobileView(context: context) ? 3 : 2,
            child: isMobileView(context: context)
                ? Center(
                    child: Text(
                      l10n.experianceTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(color: Colors.white),
                    ),
                  )
                : Row(
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
                            endIndent: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          Expanded(
            flex: isMobileView(context: context) ? 6 : 8,
            child: Row(
              children: [
                if (isMobileView(context: context))
                  const SizedBox()
                else
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
                            l10n.experiancePresent,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            l10n.experiance2019,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          color: Colors.grey,
                          child: Text(
                            l10n.experiance2016,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            l10n.experiance2012,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
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
