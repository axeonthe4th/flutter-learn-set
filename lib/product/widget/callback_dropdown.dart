import 'package:flutter/material.dart';

import '../../303/call_back_learn.dart';

class CallbackDropdown extends StatefulWidget {
  const CallbackDropdown({super.key});

  @override
  State<CallbackDropdown> createState() => _CallbackDropdownState();
}

class _CallbackDropdownState extends State<CallbackDropdown> {
  CallbackUser? _user;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallbackUser>(
        hint: const Text("Change character"),
        value: _user,
        items: CallbackUser.dummyUsers().map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(
              e.name,
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.copyWith(fontSize: 24, fontWeight: FontWeight.w300),
            ),
          );
        }).toList(),
        onChanged: (CallbackUser? callbackUser) {
          setState(() {
            _user = callbackUser;
          });
        });
  }
}
