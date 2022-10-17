import 'package:first/101/container_sized_box_learn.dart';
import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("app"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text("a" * 600),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 100,
            child: Text("b" * 72),
          ),
        ]),
        backgroundColor: Colors.lightBlue,
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) =>
                  Container(height: 50, child: const Text("axeon")),
            );
          },
          child: const Text(
            "xd",
            style: TextStyle(color: Colors.deepPurple),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: const Drawer(
            child: Text("hi",
                style: TextStyle(color: Colors.deepOrange, fontSize: 50))),
        bottomSheet: const Text("axeon"),
        bottomNavigationBar: Container(
            height: 75,
            decoration: ProjectContainerDecoration(),
            child: BottomNavigationBar(items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.abc_outlined), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.abc_outlined), label: "profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.abc_outlined), label: "messages")
            ])));
  }
}
