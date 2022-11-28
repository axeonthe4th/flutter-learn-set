import 'package:first/101/color_learn.dart';
import 'package:first/product/global/resource_context.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  context.read<ResourceContext>().clear;
                },
                icon: const Icon(Icons.remove_outlined))
          ],
          title: Text(
              context.read<ResourceContext>().model?.data?.length.toString() ??
                  "")),
      body: Column(
        children: [
          const Text("OSMAN", style: TextStyle(fontSize: 50)),
          Image.asset(ImageItems().cat, height: 150, width: 150),
          Image.network(
              "https://yt3.ggpht.com/ytc/AMLnZu_IlYLvWiftvoEo6bqzwMc0EFBCnRUsqBwzDUFPXA=s48-c-k-c0x00ffffff-no-rj",
              height: 50,
              width: 50,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error))
        ],
      ),
    );
  }
}

class ImageItems {
  final String cat = "assets/FbUdMBMXEAEeG0Q.jpg";

  final String backGroundLightsWithoutPath = "DSC_1254";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => "assets/$name.jpg";
}
