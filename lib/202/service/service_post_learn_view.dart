import 'dart:io';
import 'dart:isolate';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:first/202/service/post_model.dart';
import 'package:flutter/services.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServicePostLearn> {
  late String name = "axeon";
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com";

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIDController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    changeLoading();
    final response = await _dio.post("/posts", data: postModel);

    if (response.statusCode == HttpStatus.created) {
      name = "successed";
    }
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
          actions: [
            _isLoading
                ? const CircularProgressIndicator.adaptive()
                : const SizedBox.shrink()
          ],
        ),
        body: Column(
          children: [
            TextField(
                controller: _titleController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(hintText: "Title")),
            TextField(
                controller: _bodyController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(hintText: "Body")),
            TextField(
                controller: _userIDController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: "User ID")),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIDController.text.isNotEmpty) {
                          final model = PostModel(
                              title: _titleController.text,
                              body: _bodyController.text,
                              userId: int.tryParse(_userIDController.text));
                          _addItemToService(model);
                        }
                      },
                child: Text("Sent"))
          ],
        ));
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
