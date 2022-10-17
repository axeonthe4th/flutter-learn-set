import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  StatelessLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TitleTextWidget(title: "asd"),
            emptyBox(),
            TitleTextWidget(title: "asdasd"),
            emptyBox(),
            TitleTextWidget(title: "asd"),
            emptyBox(),
            TitleTextWidget(title: "asdf"),
            emptyBox(),
            CustomContainer(),
            emptyBox(),
          ],
        ));
  }

  SizedBox emptyBox() => const SizedBox(height: 10);
}

class CustomContainer extends StatelessWidget {
  CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 40,
      ),
    );
  }
}
