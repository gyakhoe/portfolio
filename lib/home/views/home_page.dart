import 'package:flutter/material.dart';

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
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white30,
                  offset: Offset(
                    0,
                    3,
                  ),
                  blurRadius: 10,
                  spreadRadius: 2,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                ),
              ],
              color: Colors.amber,
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
        _homeContent(title: 'Main', context: context, color: Colors.blue),
        _homeContent(title: 'About', context: context, color: Colors.green),
        _homeContent(
          title: 'Experiance',
          context: context,
          color: Colors.greenAccent,
        ),
        _homeContent(title: 'Work', context: context, color: Colors.orange),
        _homeContent(
          title: 'Contact',
          context: context,
          color: Theme.of(context).primaryColorLight,
        ),
      ],
    );
  }

  Container _homeContent({
    required String title,
    required BuildContext context,
    required Color color,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: color,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 100,
          ),
        ),
      ),
    );
  }
}
