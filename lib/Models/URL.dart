import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_url = Uri.parse('https://web.facebook.com/');
final Uri Linkedin_url = Uri.parse('https://www.linkedin.com/');
final Uri Instagram_url = Uri.parse('https://www.instagram.com/');
final Uri Snapchat_url = Uri.parse('https://www.snapchat.com/');
final Uri Whatsapp_url = Uri.parse('https://www.whatsapp.com/');
final Uri Apple_url = Uri.parse('https://www.apple.com/');
final Uri Microsoft_url = Uri.parse('https://www.microsoft.com/en-jo/');
final Uri Amazon_url = Uri.parse('https://www.amazon.com/');
final Uri Google_url = Uri.parse('https://www.google.com/');

Future<void> Facebook_function() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> LinkedIn_function() async {
  if (!await launchUrl(Linkedin_url)) {
    throw 'Could not launch $Linkedin_url';
  }
}

Future<void> Instagram_function() async {
  if (!await launchUrl(Instagram_url)) {
    throw 'Could not launch $Instagram_url';
  }
}

Future<void> Apple_function() async {
  if (!await launchUrl(Apple_url)) {
    throw 'Could not launch $Apple_url';
  }
}

Future<void> Microsoft_function() async {
  if (!await launchUrl(Microsoft_url)) {
    throw 'Could not launch $Microsoft_url';
  }
}

Future<void> Amazon_function() async {
  if (!await launchUrl(Amazon_url)) {
    throw 'Could not launch $Amazon_url';
  }
}

Future<void> Google_function() async {
  if (!await launchUrl(Google_url)) {
    throw 'Could not launch $Google_url';
  }
}

Future<void> Snapchat_function() async {
  if (!await launchUrl(Snapchat_url)) {
    throw 'Could not launch $Snapchat_url';
  }
}

Future<void> Whatsapp_function() async {
  if (!await launchUrl(Whatsapp_url)) {
    throw 'Could not launch $Whatsapp_url';
  }
}

class URLClass extends StatelessWidget {
  URLClass(
      {required this.myfunction,
      required this.myplatformTitle,
      required this.myplatformSub,
      required this.myplatformIcon});

  String? myplatformTitle;
  String? myplatformSub;
  IconData? myplatformIcon;
  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Column(children: [
        ListTile(
          title: Text("$myplatformTitle"),
          subtitle: Text("$myplatformSub"),
          leading: Icon(myplatformIcon),
        ),
      ]),
    );
  }
}
