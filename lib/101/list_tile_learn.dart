import 'dart:math';

import "package:flutter/material.dart";
import "package:first/core/random_image.dart";

class ListTileLearn extends StatefulWidget {
  const ListTileLearn({super.key});

  @override
  State<ListTileLearn> createState() => _ListTileLearnState();
}

class _ListTileLearnState extends State<ListTileLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 2),
        child: Column(
          children: [
            Expanded(child: MyWidget()),
            Expanded(child: MyWidget()),
            Expanded(child: MyWidget()),
            Expanded(child: MyWidget()),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;
  void buttonPress0() {
    setState(() {
      counter++;
    });
  }

  void buttonPress1() {
    setState(() {
      counter += 5;
    });
  }

  void buttonPress2() {
    setState(() {
      counter += 50;
    });
  }

  void buttonPress3() {
    setState(() {
      counter += 500;
    });
  }

  void buttonPress4() {
    setState(() {
      counter += 5000;
    });
  }

  int x = Random().nextInt(5);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: RandomHeight100Image(),
          minVerticalPadding: 7,
          onTap: () {
            if (x == 0) {
              buttonPress0();
            } else if (x == 1) {
              buttonPress1();
            } else if (x == 2) {
              buttonPress2();
            } else if (x == 3) {
              buttonPress3();
            } else if (x == 4) {
              buttonPress4();
            }
          },
          subtitle: const Text("Can you make it till the end?",
              style: TextStyle(fontSize: 13.9)),
          leading: Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              width: 20,
              child: const Icon(Icons.money)),
          trailing: Container(
            alignment: Alignment.bottomCenter,
            height: 100,
            width: 20,
            child: const SizedBox(width: 20, child: Icon(Icons.chevron_right)),
          ),
        ),
      ),
    );
  }
}
