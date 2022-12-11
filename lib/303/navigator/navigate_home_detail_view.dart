// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavigateHomeDetailView extends StatefulWidget {
  const NavigateHomeDetailView({Key? key, this.id}) : super(key: key);
  final String? id;

  @override
  State<NavigateHomeDetailView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeDetailView> {
  String? _id;
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final _modelId = ModalRoute.of(context)?.settings.arguments;

      setState(() {
        _id = _modelId is String ? _modelId : widget.id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_id ?? "")),
    );
  }
}
