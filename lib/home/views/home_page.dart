import 'package:flutter/material.dart';
import 'package:portfolio/about/views/about_page.dart';
import 'package:portfolio/contact/views/contact_page.dart';
import 'package:portfolio/experiance/views/experiance_page.dart';
import 'package:portfolio/main/views/main_page.dart';
import 'package:portfolio/work/views/work_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _homeListView(context),
        Align(
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
                    width: 400,
                    child: Row(
                      children: [
                        _navItem(textToDisplay: 'About'),
                        _navItem(textToDisplay: 'Experiance'),
                        _navItem(textToDisplay: 'Work'),
                        _navItem(textToDisplay: 'Contact'),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Text(
                            'Resume',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextStyle _homeNavTextStyle() {
    return const TextStyle(
      color: Colors.white,
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

  ListView _homeListView(BuildContext context) {
    return ListView(
      children: [
        _homeContent(
          content: const MainPage(),
          context: context,
          color: Theme.of(context).primaryColorDark,
        ),
        _homeContent(
          content: const AboutPage(),
          context: context,
          color: Theme.of(context).primaryColorDark,
        ),
        _homeContent(
          content: const ExperiancePage(),
          context: context,
          color: Theme.of(context).primaryColorDark,
        ),
        _homeContent(
          content: const WorkPage(),
          height: MediaQuery.of(context).size.height * 3,
          context: context,
          color: Theme.of(context).primaryColorDark,
        ),
        _homeContent(
          content: const ContactPage(),
          context: context,
          color: Theme.of(context).primaryColorDark,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
      ],
    );
  }

  Container _homeContent({
    required Widget content,
    required BuildContext context,
    required Color color,
    double? height,
  }) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: color,
      child: Center(
        child: content,
      ),
    );
  }
}
