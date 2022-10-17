import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomCard(),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({Key? key}) : super(key: key);

  final Widget child = const SizedBox(
    height: 100,
    width: 150,
    child: Center(child: Text("axeon")),
  );
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: roundedRectangleBorder,
      elevation: 10,
      margin: const EdgeInsets.all(3),
      child: SizedBox(
    height: 100,
    width: 150,
    child: Center(child: Text("axeon")),
  ),
    );
  }
}
