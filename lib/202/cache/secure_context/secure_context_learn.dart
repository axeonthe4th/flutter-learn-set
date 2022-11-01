import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedContextLearn extends StatefulWidget {
  const SharedContextLearn({super.key});

  @override
  State<SharedContextLearn> createState() => _SharedContextLearnState();
}

class _SharedContextLearnState extends State<SharedContextLearn> {
  final storage = const FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: const TextField(),
    );
  }
}
