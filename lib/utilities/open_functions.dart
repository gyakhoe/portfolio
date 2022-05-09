import 'package:url_launcher/url_launcher.dart';

void appsLaunchGivenUrl({required String urlToLaunch}) {
  late String host;
  late String path;
  if (urlToLaunch.contains('/')) {
    host = urlToLaunch.substring(0, urlToLaunch.indexOf('/'));
    path = urlToLaunch.substring(urlToLaunch.indexOf('/'));
  } else {
    host = urlToLaunch;
    path = '/';
  }
  final uriToLaunch = Uri(scheme: 'https', host: host, path: path);
  launchUrl(uriToLaunch);
}
