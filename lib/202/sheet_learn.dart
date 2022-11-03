import 'dart:ffi';

import 'package:first/101/image_learn.dart';
import 'package:first/101/list_view_builder.dart';
import 'package:first/101/list_view_learn.dart';
import 'package:first/202/animated_learn.dart';
import 'package:first/202/image_learn_advanced.dart';
import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with ProductSheetMixin {
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
      body: Center(
          child: TextButton(
              onPressed: () {
                showCustomSheet(context, ImageLearnAdvanced());
              },
              child:
                  Text("show", style: Theme.of(context).textTheme.headline1))),
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
                height: 30,
                child: Divider(
                    color: Colors.black,
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.45,
                    endIndent: MediaQuery.of(context).size.width * 0.45),
              ),
              Positioned(
                  right: 10,
                  top: 5,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.close)))
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
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet<T>(
        barrierColor: Colors.transparent,
        backgroundColor: Colors.cyan,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) {
          return CustomMainSheet(child: Expanded(child: ListViewLearn()));
        });
  }
}

class CustomMainSheet extends StatelessWidget {
  const CustomMainSheet({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [BaseSheetHeader(), child],
      ),
    );
  }
}

class BaseSheetHeader extends StatelessWidget {
  const BaseSheetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 30,
          child: Divider(
            color: Colors.black,
            thickness: 1,
            indent: MediaQuery.of(context).size.width * 0.45,
            endIndent: MediaQuery.of(context).size.width * 0.45,
          ),
        ),
        Positioned(
            right: 10,
            top: 5,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.close),
            ))
      ],
    );
  }
}
