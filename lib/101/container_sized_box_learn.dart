import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          width: 300,
          child: Text("a" * 50),
        ),
        const SizedBox.shrink(),
        SizedBox.square(
          dimension: 100,
          child: Text("b" * 72),
        ),
        Container(
            height: 75,
            constraints: const BoxConstraints(
              maxWidth: 200,
              minWidth: 20,
              maxHeight: 200,
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            decoration: ProjectContainerDecoration(),
            child: Text(
              "c" * 400,
              maxLines: 2,
            ))
      ]),
    );
  }
}

class ProjectUtility {}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 30, 29, 108),
            Color.fromARGB(255, 165, 127, 70)
          ]),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0.2, 5),
              blurRadius: 22,
            )
          ],
        );
}
