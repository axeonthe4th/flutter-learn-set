import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  void launch2Url(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
