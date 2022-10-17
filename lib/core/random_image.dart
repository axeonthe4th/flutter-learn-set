import "package:flutter/material.dart";
import "dart:math";

class RandomHeight100Image extends StatelessWidget {
  RandomHeight100Image({super.key, this.height = 100});

  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://picsum.photos/200/300?random=${numberGenerator(1)}",
        height: 100,
        fit: BoxFit.cover);
  }
}

int numberGenerator(int number) {
  return number += Random().nextInt(100000);
}
