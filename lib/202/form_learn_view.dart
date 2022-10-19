import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _key,
          autovalidateMode: AutovalidateMode.always,
          onChanged: () {},
          child: Column(
            children: [
              TextFormField(validator: FormFieldValidator().isNotEmpty),
              TextFormField(validator: FormFieldValidator().isNotEmpty),
              DropdownButtonFormField<String>(
                value: "a",
                validator: FormFieldValidator().isNotEmpty,
                items: const [
                  DropdownMenuItem(value: "a", child: Text("a")),
                  DropdownMenuItem(value: "a1", child: Text("a1")),
                  DropdownMenuItem(value: "a2", child: Text("a2")),
                ],
                onChanged: (value) {},
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_key.currentState?.validate() ?? false) {
                      print("data verified");
                    }
                  },
                  child: const Text("save"))
            ],
          ),
        ));
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage.notEmpty;
  }
}

class ValidatorMessage {
  static const String notEmpty = "This area need to be filled";
}
