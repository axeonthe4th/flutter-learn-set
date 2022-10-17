import "package:flutter/material.dart";

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("c");
  }

  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) {
    //sayfada degisiklik yapildigi anda cagrilir.
    super.didUpdateWidget(oldWidget);
    _message = widget.message;
    _computeName();
    setState(() {});
  }

  @override
  void dispose() {
    //sayfa degistigi anda cagrilir.
    super.dispose();

    _message = "";
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print("a");
  }

  void _computeName() {
    if (_isOdd) {
      _message += " odd";
    } else {
      _message += " even";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(
              onPressed: () {
                setState(() {
                  _message = "a";
                });
              },
              child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
