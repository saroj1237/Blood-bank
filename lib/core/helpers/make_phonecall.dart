import 'package:url_launcher/url_launcher.dart';

Future<void> makePhoneCall(String url) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: url,
  );
  canLaunchUrl(launchUri).then(
    (value) async {
      if (!value) return;
      await launchUrl(launchUri);
    },
  );
}
