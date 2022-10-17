import "package:flutter/material.dart";

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          Positioned(
              bottom: 0,
              height: 100,
              width: 75,
              child: Container(color: Colors.green)),
          Positioned.fill(
            top: 100,
            child: Container(color: Colors.deepPurple),
          )
        ],
      ),
    );
  }
}
