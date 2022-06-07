import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utilities/open_functions.dart';

class Project extends StatelessWidget {
  const Project({
    Key? key,
    required this.context,
    required this.projectName,
    required this.imageAssetUrl,
    required this.projectDetail,
    required this.technologies,
    required this.featuredProjectTitle,
    required this.projectExternalUrl,
    required this.isReversed,
    required this.isMobile,
  }) : super(key: key);

  final BuildContext context;
  final String projectName;
  final String imageAssetUrl;
  final String projectDetail;
  final String technologies;
  final String projectExternalUrl;
  final String featuredProjectTitle;
  final bool isReversed;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Align(
              alignment:
                  isReversed ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent,
                      blurRadius: 5,
                      blurStyle: BlurStyle.outer,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                height: 400,
                width: 600,
                child: Opacity(
                  opacity: isMobile ? 0.4 : 1,
                  child: Container(
                    color: Colors.black,
                    child: Image.asset(
                      imageAssetUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment:
                  isReversed ? Alignment.centerLeft : Alignment.centerRight,
              child: SizedBox(
                height: 400,
                width: 400,
                // color: Colors.purpleAccent,
                child: Column(
                  crossAxisAlignment: isReversed
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      featuredProjectTitle,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      projectName,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(10),
                      color: Colors.deepOrange,
                      child: Text(
                        projectDetail,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                    Text(
                      technologies,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () => appsLaunchGivenUrl(
                        urlToLaunch: projectExternalUrl,
                      ),
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowUpRightFromSquare,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
