import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

PreferredSizeWidget appBar(Color bgColor, String title) {
  return AppBar(
    backgroundColor: bgColor,
    title: Text(title),
    actions: [
      linkButton(Icons.code, 'https://github.com/henry-h22'),
      linkButton(Icons.my_library_music_outlined, 'https://www.youtube.com/channel/UCRcSHcI9-7js9dSzm8Lf72w'),
      linkButton(Icons.school_sharp, 'https://www.linkedin.com/in/henryheyden22/'),
    ],
  );
}

IconButton linkButton(IconData icon, String link) {
  return IconButton(
    onPressed: () =>
      launchUrl(Uri.parse(link)),
    icon: Icon(icon, size: 32)
  );
}