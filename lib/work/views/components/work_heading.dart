import 'package:flutter/material.dart';
import 'package:portfolio/utilities/open_functions.dart';

class WorkHeading extends StatelessWidget {
  const WorkHeading({
    Key? key,
    required this.context,
    required this.title,
    this.titleFlex,
    this.dividerFlex,
  }) : super(key: key);

  final BuildContext context;
  final String title;
  final int? titleFlex;
  final int? dividerFlex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: isMobileView(context: context)
          ? Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: Colors.white),
              ),
            )
          : Row(
              children: [
                Expanded(
                  flex: titleFlex ?? 4,
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: dividerFlex ?? 6,
                  child: const Divider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 20,
                    endIndent: 100,
                  ),
                ),
              ],
            ),
    );
  }
}
