import 'package:first/101/container_sized_box_learn.dart';
import 'package:first/101/icon_learn.dart';
import 'package:first/101/padding_learn.dart';
import 'package:first/101/stateless._learn.dart';
import 'package:first/101/text_learn_view.dart';
import 'package:first/101/scaffold_learn.dart';
import 'package:first/202/image_learn_advanced.dart';
import 'package:first/202/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:first/101/button_learn.dart';
import 'package:flutter/services.dart';
import '101/appbar_learn.dart';
import "package:first/101/color_learn.dart";
import '101/card_learn.dart';
import '101/image_learn.dart';
import '101/list_view_builder_example.dart';
import '202/animated_learn.dart';
import '202/cache/shared_learn_cache.dart';
import '202/form_learn_view.dart';
import '202/oop_learn_view.dart';
import '202/package_learn.dart';
import '202/state_manage/state_manage_learn_view.dart';
import '202/theme_learn_view.dart';
import 'demos/note_demos_view.dart';
import '101/custom_widget_learn.dart';
import "101/indicator_learn.dart";
import "101/list_tile_learn.dart";
import "101/column_row_learn.dart";
import '101/stack_learn.dart';
import "package:first/demos/stack_demo_view.dart";
import "package:first/101/stateful_learn.dart";
import '101/page_learn_view.dart';
import "101/stateful_life_cycle_learn.dart";
import 'package:first/101/text_field_learn.dart';
import "demos/color_demos_view.dart";
import "demos/color_life_cycle_view.dart";
import "101/list_view_learn.dart";
import "101/list_view_builder.dart";
import "package:first/demos/my_collections_demos.dart";
import '101/navigation_learn.dart';
import "202/tab_learn.dart";
import 'package:first/202/model_learn_view.dart';
import "202/service/service_post_learn_view.dart";
import '202/service/service_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme().theme,
      home: SharedLearn(),
    );
  }
}
