import 'dart:ffi';

import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  Color _backgroundColor = Colors.white;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          MyBottomSheetContent.isPressed ? Colors.grey : _backgroundColor,
      appBar: AppBar(),
      body: Column(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              barrierColor: Colors.transparent,
              backgroundColor: Colors.cyan,
              isScrollControlled: true,
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              builder: (context) {
                return MyBottomSheetContent();
              }).then((value) {
            setState(() {});
          });
        },
        child: const Icon(Icons.share_outlined),
      ),
    );
  }
}

class MyBottomSheetContent extends StatefulWidget {
  static bool isPressed = false;

  MyBottomSheetContent({
    Key? key,
  }) : super(key: key);

  @override
  State<MyBottomSheetContent> createState() => _MyBottomSheetContentState();
}

class _MyBottomSheetContentState extends State<MyBottomSheetContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 24,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                  indent: MediaQuery.of(context).size.width * 0.45,
                  endIndent: MediaQuery.of(context).size.width * 0.45,
                ),
              ),
              Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.topCenter,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close)),
                  ))
            ],
          ),
          const Text("data xd"),
          Image.asset("assets/chad.png", height: 200),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                MyBottomSheetContent.isPressed =
                    !MyBottomSheetContent.isPressed;
              },
              child: const Text("change background color"))
        ],
      ),
    );
  }
}

mixin ProductSheetMixin {
  void showCustomSheet(BuildContext context) {
    showModalBottomSheet(
        barrierColor: Colors.transparent,
        backgroundColor: Colors.cyan,
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) {
          return MyBottomSheetContent();
        });
  }
}
