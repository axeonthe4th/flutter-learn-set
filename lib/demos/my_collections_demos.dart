import "package:flutter/material.dart";

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(
            model: _items[index],
          );
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: SizedBox(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                Expanded(
                    child: Image.asset(
                  _model.imagePath,
                  fit: BoxFit.cover,
                  height: 200,
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text(_model.title), Text("${_model.price}")],
                  ),
                )
              ]),
            )));
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;
  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectPaths.imagePath, title: "chad1", price: 20),
      CollectionModel(
          imagePath: ProjectPaths.imagePath, title: "chad2", price: 20),
      CollectionModel(
          imagePath: ProjectPaths.imagePath, title: "chad3", price: 20)
    ];
  }
}

class ProjectPaths {
  static const imagePath = "assets/deneme1.png";
}
