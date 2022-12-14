import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            appBarTheme: const AppBarTheme(
                centerTitle: true,
                backgroundColor: Color.fromARGB(0, 99, 97, 97),
                elevation: 0)),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("axeon"),
      ),
      body: Padding(
        padding: ProjectPadding.pagePadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Section(),
                Section(),
                Section(),
                Section(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Section(),
                Section(),
                Section(),
                Section(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Section(),
                Section(),
                Section(),
                Section(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Section(),
                Section(),
                Section(),
                Section(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 41, 57, 124),
        onPressed: incrementCounter,
        child: Text(
          '$counter',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 24,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class MyStyle extends ButtonStyle {
  MyStyle()
      : super(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromARGB(31, 40, 39, 39);
            } else {
              return const Color.fromARGB(255, 198, 198, 198);
            }
          }),
        );
}

class MyStyle2 extends ButtonStyle {
  MyStyle2()
      : super(backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return const Color.fromARGB(255, 198, 198, 198);
          } else {
            return Colors.black;
          }
        }));
}

class Section extends StatefulWidget {
  Section({Key? key})
      : super(
          key: key,
        );

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  int counter = 0;

  void counterUpdate() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 25,
      child: OutlinedButton(
        onPressed: () {
          counterUpdate();
        },
        style: MyStyle(),
        child: SizedBox(
            width: 55,
            height: 85,
            child: Center(
              child: Text(
                "$counter",
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(fontSize: 35, fontWeight: FontWeight.w300),
              ),
            )),
      ),
    );
  }
}

class ProjectPadding {
  static EdgeInsets pagePadding = const EdgeInsets.symmetric(horizontal: 5);
}
