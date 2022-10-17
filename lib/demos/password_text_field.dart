import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;
  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: const [AutofillHints.password],
      controller: widget.controller,
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          hintText: "password",
          prefixIcon: const Icon(Icons.password_rounded),
          suffix: onVisibilityIcon()),
    );
  }

  IconButton onVisibilityIcon() {
    return IconButton(
        onPressed: _changeLoading,
        icon: AnimatedCrossFade(
          firstChild: const Icon(Icons.visibility_outlined),
          secondChild: const Icon(Icons.visibility_off_outlined),
          crossFadeState:
              _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
        ));
  }
}
//icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off));