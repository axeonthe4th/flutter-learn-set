import 'package:first/202/oop_learn.dart';
import 'package:flutter/material.dart';

class OopLearnView extends StatefulWidget {
  const OopLearnView({super.key});

  @override
  State<OopLearnView> createState() => _OopLearnViewState();
}

class _OopLearnViewState extends State<OopLearnView> {
  FileDownload? downloadManager;
  @override
  void initState() {
    super.initState();
    downloadManager = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          downloadManager?.downloadItem(null);
        },
      ),
    );
  }
}
