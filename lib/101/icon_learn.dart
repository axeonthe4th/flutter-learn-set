import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("axeon")),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColor.froly,
              size: iconSize.iconSmall,
            ),
          ),
          const SizedBox(
            height: 40,
            width: 40,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColor.froly,
              size: iconSize.iconSmall,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 30;
  final double iconMedium = 60;
  final double iconLarge = 90;
}

class IconColors {
  final Color froly = const Color(0xffffED617A);
}
