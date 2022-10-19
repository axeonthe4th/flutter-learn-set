import 'package:first/202/state_manage/state_manage_learn_view.dart';
import 'package:flutter/material.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  @override
  void initState() {
    super.initState();
  }

  bool isVisible = true;
  bool opacity = true;

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      opacity = !opacity;
    });
  }
}
