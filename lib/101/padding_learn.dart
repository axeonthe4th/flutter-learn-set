import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: ProjectPadding.pagePaddingVertical +
              ProjectPadding.pagePaddingHorizontal,
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                height: 100,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8) +
                    const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
        ));
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}
