import 'dart:developer';
import 'dart:math';

import 'package:first/main.dart';
import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  ButtonLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBody: true,
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              } else {
                return Colors.orange;
              }
            })),
            child: Text(
              "a",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("b"),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.abc_rounded,
              color: Colors.deepPurple,
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
          ),
          OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                } else {
                  return Colors.orange;
                }
              }),
            ),
            child: const SizedBox(
              width: 200,
              height: 200,
            ),
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              label: const Text("e")),
          InkWell(
            onTap: () {},
            child: const Text("x", style: TextStyle(fontSize: 30)),
          ),
          Container(
            height: 100,
            color: Colors.deepPurple,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 40, left: 40),
                child: Text(
                  "g",
                  style: Theme.of(context).textTheme.headline4,
                )),
          ),
        ],
      ),
    );
  }
}
