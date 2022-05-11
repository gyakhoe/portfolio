import 'package:flutter/material.dart';
import 'package:portfolio/l10n/l10n.dart';

class TopHeaderPage extends StatelessWidget {
  const TopHeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.white30,
              offset: Offset(
                0,
                2,
              ),
              blurRadius: 2,
              spreadRadius: 2,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
            ),
          ],
          color: Theme.of(context).primaryColorDark,
        ),
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.language,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ListView(
                    padding: const EdgeInsets.only(
                      top: 35,
                      bottom: 20,
                      right: 10,
                    ),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      _navItem(textToDisplay: l10n.navAboutTitle),
                      _navItem(textToDisplay: l10n.navExperianceTitle),
                      _navItem(textToDisplay: l10n.navWorkTitle),
                      _navItem(textToDisplay: l10n.navContactTitle),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          l10n.navResumeTitle,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _navItem({required String textToDisplay}) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      child: Text(
        textToDisplay,
        style: _homeNavTextStyle(),
      ),
    );
  }

  TextStyle _homeNavTextStyle() {
    return const TextStyle(
      color: Colors.white,
    );
  }
}
