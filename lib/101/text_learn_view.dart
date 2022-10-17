import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = "axeon";
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("${keys.turkish} $name ${name.length - 1}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle),
          Text("${keys.english} $name ${name.length - 1}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: ProjectColors.welcomeColor)),
          Text("${keys.french} $name ${name.length - 2}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle),
        ]),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      color: ProjectColors.welcomeColor,
      fontSize: 16,
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 1,
      fontWeight: FontWeight.w600);
}

class ProjectColors extends ProjectStyles {
  static const Color welcomeColor = Colors.red;
  ProjectColors() : super();
}

class ProjectKeys {
  final String english = "hello";
  final String turkish = "merhaba";
  final String french = "bonjour";
  final String deutsch = "halo";
}
