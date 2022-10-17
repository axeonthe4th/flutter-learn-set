import 'package:first/101/color_learn.dart';
import 'package:first/101/image_learn.dart';
import 'package:first/101/padding_learn.dart';
import 'package:flutter/material.dart';
import "package:first/101/image_learn.dart";
import 'package:flutter/services.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = "Create your first note";
  final _subTitle = "Add a note";
  final _text = "Create a note";
  final _subText = "Import notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 234, 234),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Padding(
              padding: PaddingItems.verticalPadding,
              child: Image.asset("assets/DSC_1254.jpg"),
            ),
            Padding(
                padding: PaddingItems.verticalPadding,
                child: TitleWidget(title: _title)),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: SubtitleWidget(subTitle: _subTitle),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                height: ButtonHeight.buttonNormalHeight,
                width: 300,
                child: Center(
                  child: CreateNote(
                    text: _text,
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: SubText(
                  subText: _subText,
                )),
            const SizedBox(
              height: ButtonHeight.buttonSmallHeight,
            )
          ],
        ),
      ),
    );
  }
}

class SubText extends StatelessWidget {
  final String subText;

  const SubText({Key? key, required this.subText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Import notes");
  }
}

class CreateNote extends StatelessWidget {
  final String text;
  const CreateNote({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Create a note",
        style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 20));
  }
}

class SubtitleWidget extends StatelessWidget {
  final TextAlign textAlign;
  final String subTitle;
  const SubtitleWidget(
      {Key? key, required this.subTitle, this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Add a note",
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
      textAlign: textAlign,
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
    );
  }
}

class PaddingItems {
  static const horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const verticalPadding = EdgeInsets.symmetric(vertical: 5);
  static const textPadding = EdgeInsets.all(5);
}

class ButtonHeight {
  static const double buttonSmallHeight = 20;
  static const double buttonNormalHeight = 40;
}
