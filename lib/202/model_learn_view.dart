import 'package:first/202/model_learn.dart';
import 'package:flutter/material.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: "a");
  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()
      ..userId = 1
      ..body = "axeon";
    user1.body = "hello";
    final user2 = PostModel2(1, 2, "title", "a");
    user2.body = "a";

    final user3 = PostModel3(1, 3, "a", "b");

    final user4 = PostModel4(userId: 1, id: 2, title: "title", body: "b");
    //lokalden veri cekmek icin.

    final user5 = PostModel5(userId: 1, id: 4, title: "title", body: "c");
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 4, title: "title", body: "c");

    final user7 = PostModel7();

    final user8 = PostModel8(body: "a");
    //servisten veri cekmek icin.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user9.body ?? "Not have any data"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(body: "body changed");
            user9.updateBody(null);
          });
        },
      ),
    );
  }
}
