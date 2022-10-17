import "package:flutter/material.dart";

class CounterButton extends StatefulWidget {
  const CounterButton({super.key});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int _counterCustom = 0;
  void _updateCounter() {
    setState(() {
      _counterCustom++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _updateCounter,
      child: Text("$_counterCustom"),
    );
  }
}
