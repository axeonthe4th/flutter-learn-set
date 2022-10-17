import 'dart:math';

import 'package:flutter/material.dart';
import "package:first/core/random_image.dart";
import "package:first/101/list_tile_learn.dart";

class ListViewBuilderLearn1 extends StatefulWidget {
  const ListViewBuilderLearn1({super.key});

  @override
  State<ListViewBuilderLearn1> createState() => _ListViewBuilderLearn1State();
}

class _ListViewBuilderLearn1State extends State<ListViewBuilderLearn1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(itemBuilder: ((context, index) {
          return MyWidget();
        })));
  }
}
