import 'package:first/core/random_image.dart';
import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  StackDemoView({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                      bottom: _cardHeight / 2, child: RandomHeight100Image()),
                  Positioned(
                    height: 50,
                    width: _cardWidth,
                    bottom: 0,
                    child: _cardCustom(),
                  )
                ],
              )),
          const Spacer(flex: 6),
        ],
      ),
    );
  }
}

Card _cardCustom() {
  return const Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(),
  );
}
