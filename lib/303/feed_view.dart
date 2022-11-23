import 'dart:ffi';

import 'package:first/202/service/post_model.dart';
import 'package:first/202/service/post_service.dart';
import 'package:flutter/material.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView>
    with AutomaticKeepAliveClientMixin {
  final IPostService _postService = PostService();
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(onPressed: (() {
        setState(() {});
      })),
      appBar: AppBar(),
      body: FutureBuilder<List<PostModel>?>(
          future: _postService.fetchPostItemsAdvanced(),
          builder: ((BuildContext context,
              AsyncSnapshot<List<PostModel>?> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return const Placeholder();

              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              case ConnectionState.active:
                return const Center(child: CircularProgressIndicator());
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                              title: Text(snapshot.data?[index].body ?? "")),
                        );
                      });
                } else {
                  return const Placeholder();
                }
            }
          })),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
