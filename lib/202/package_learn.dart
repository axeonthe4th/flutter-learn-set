import 'package:first/202/package/launch_manager.dart';
import "package:flutter/material.dart";
import "package:flutter_spinkit/flutter_spinkit.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package/loading_bar.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
        onPressed: () {
          launch("https://pub.dev/packages/url_launcher");
        },
      ),
      body: Column(
        children: [
          Text("a", style: Theme.of(context).textTheme.subtitle1),
          const LoadingBar(),
        ],
      ),
    );
  }
}
