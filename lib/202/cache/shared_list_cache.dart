import 'dart:ffi';

import 'package:first/202/cache/shared_learn_cache.dart';
import 'package:flutter/material.dart';

class SharedListCache extends StatelessWidget {
  const SharedListCache({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.download_done_outlined),
          )
        ],
      ),
      body: _UserListView(),
    );
  }
}

class _UserListView extends StatelessWidget {
  _UserListView({
    Key? key,
  }) : super(key: key);

  final List<User> users = UserItems().users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, index) {
          return Card(
            child: ListTile(
              title: Text(users[index].name),
              subtitle: Text(users[index].description),
              trailing: Text(
                users[index].url,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    decoration: TextDecoration.underline, color: Colors.indigo),
              ),
            ),
          );
        });
  }
}
