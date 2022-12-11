import 'package:flutter/material.dart';

class MyCalculatorHomePage extends StatefulWidget {
  const MyCalculatorHomePage({super.key});

  @override
  State<MyCalculatorHomePage> createState() => _MyCalculatorHomePageState();
}

class _MyCalculatorHomePageState extends State<MyCalculatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculator")),
      ),
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
            child: Row(
              children: [],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.deepOrange,
              child: Row(
                children: [],
              ),
            )),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Align(
                alignment: Alignment(0, 0),
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.cyan,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
