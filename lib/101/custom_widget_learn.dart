import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String _title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(title: _title, onPressed: () {})),
          )),
          const SizedBox(height: 10),
          CustomFoodButton(title: _title, onPressed: () {})
        ],
      ),
    );
  }
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets extremePadding =
      const EdgeInsets.symmetric(horizontal: 40, vertical: 5);
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final void Function() onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: redColor,
          elevation: 5,
          shape: const StadiumBorder(),
        ),
        child: Padding(
          padding: normalPadding,
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold)),
        ));
  }
}
