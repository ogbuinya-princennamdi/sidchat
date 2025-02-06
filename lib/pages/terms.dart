import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(String url) async {
  if (await canLaunchUrl(url as Uri)) {
    await launchURL(url);
  } else {
    throw 'Could not launch $url';
  }
}
