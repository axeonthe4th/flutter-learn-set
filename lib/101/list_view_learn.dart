import "package:flutter/material.dart";

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                FittedBox(
                    child: Text(
                  "me",
                  style: Theme.of(context).textTheme.headline1,
                  maxLines: 1,
                )),
                const Divider(color: Colors.black, thickness: 3),
                Container(color: Colors.grey, height: 300),
                const Divider(color: Colors.black, thickness: 3),
                SizedBox(
                  height: 300,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                            color: Colors.deepPurple, height: 300, width: 300),
                        Container(color: Colors.red, height: 300, width: 300),
                        Container(color: Colors.blue, height: 300, width: 300),
                        Container(
                            color: Colors.yellow, height: 300, width: 300),
                      ]),
                ),
                const Divider(color: Colors.black, thickness: 3),
                IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
                //xx
                FittedBox(
                    child: Text(
                  "me",
                  style: Theme.of(context).textTheme.headline1,
                  maxLines: 1,
                )),
                const Divider(color: Colors.black, thickness: 3),
                Container(color: Colors.grey, height: 300),
                const Divider(color: Colors.black, thickness: 3),
                SizedBox(
                  height: 300,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Container(
                        color: Colors.deepPurple, height: 300, width: 300),
                    Container(color: Colors.red, height: 300, width: 300),
                    Container(color: Colors.blue, height: 300, width: 300),
                    Container(color: Colors.yellow, height: 300, width: 300),
                  ]),
                ),
                const Divider(color: Colors.black, thickness: 3),
                IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
                _ListDemoState(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ListDemoState extends StatefulWidget {
  const _ListDemoState({super.key});

  @override
  State<_ListDemoState> createState() => __ListDemoStateState();
}

class __ListDemoStateState extends State<_ListDemoState> {
  @override
  void initState() {
    super.initState();
    print("init");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
