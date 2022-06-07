import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';

class AboutMeImage extends StatelessWidget {
  const AboutMeImage({
    Key? key,
    required this.context,
    required AppLocalizations l10n,
    required this.height,
    this.width,
  })  : _l10n = l10n,
        super(key: key);

  final BuildContext context;
  final AppLocalizations _l10n;
  final double height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: 0.9,
              child: Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.greenAccent,
                    width: 5,
                  ),
                ),
              ),
            ),
          ),
          Align(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: 0.9,
              child: Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.redAccent,
                    width: 5,
                  ),
                ),
                child: Image.asset(
                  _l10n.aboutMeImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
