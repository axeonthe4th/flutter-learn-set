import 'dart:math';

import 'package:flutter/material.dart';
import "package:first/core/random_image.dart";
import "package:first/101/list_tile_learn.dart";

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(itemBuilder: ((context, index) {
          return MyWidget();
        })));
  }
}
