import 'package:first/202/state_manage/state_learn_view_model.dart';
import 'package:flutter/material.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: opacity ? Colors.blue : Colors.yellow,
        shadowColor: isVisible ? Colors.amber : Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible;
          changeOpacity;
        },
      ),
    );
  }
}
