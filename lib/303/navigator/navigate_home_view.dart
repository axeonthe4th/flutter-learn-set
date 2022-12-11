import 'package:first/product/navigator/navigator_routes.dart';
import 'package:flutter/material.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({super.key});

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(toString())),
      floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            Navigator.of(context)
                .pushNamed(NavigatorNames.detail.withParaf, arguments: "x");
          },
          child: const Icon(Icons.arrow_back)),
    );
  }
}
