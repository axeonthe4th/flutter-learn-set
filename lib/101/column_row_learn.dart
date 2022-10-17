import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Row(
                children: [
                  Expanded(flex: 6, child: Container(color: Colors.deepOrange)),
                  Expanded(child: Container(color: Colors.green)),
                  Expanded(child: Container(color: Colors.indigoAccent)),
                  Expanded(child: Container(color: Colors.pink)),
                ],
              )),
          const Spacer(flex: 2),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("a"),
                Text("a1"),
                Text("a2"),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: Column(children: const [
              Expanded(child: Text("data")),
              Expanded(child: Text("data")),
              Expanded(child: Text("data")),
              Expanded(child: Text("data")),
            ]),
          ),
        ],
      ),
    );
  }
}
