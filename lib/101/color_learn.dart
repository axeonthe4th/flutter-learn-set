import 'package:flutter/material.dart';

class ColorView extends StatelessWidget {
  ColorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 50,
        width: 100,
        color: appColors.color1,
        child: const Text(
          "axeon",
          style: TextStyle(
            color: appColors.color2,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class appColors {
  static const color1 = Color(0xffEDBF61);
  static const Color color2 = Color(0xffADFF91);
  static const Color color3 = Color.fromARGB(255, 255, 46, 46);
}
