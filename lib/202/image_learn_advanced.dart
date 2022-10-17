import 'package:flutter/material.dart';

class ImageLearnAdvanced extends StatelessWidget {
  const ImageLearnAdvanced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: ImagePaths.chad.toWidgetWithFolder()),
          Expanded(child: ImagePaths.cat.toWidgetSimple()),
          Expanded(child: ImagePaths.deneme1.toWidgetSimple()),
        ],
      ),
    );
  }
}

enum ImagePaths { chad, deneme1, cat }

extension ImagePathsExtension on ImagePaths {
  String pathSimple() {
    return "assets/$name.png";
  }

  String pathWithFolder() {
    return "assets/png/$name.png";
  }

  Widget toWidgetSimple() {
    return Image.asset(pathSimple());
  }

  Widget toWidgetWithFolder() {
    return Image.asset(pathWithFolder());
  }
}
