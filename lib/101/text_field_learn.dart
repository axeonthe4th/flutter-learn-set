import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "package:first/product/language/language_items.dart";

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("axeon"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                autofillHints: const [AutofillHints.email],
                buildCounter: (BuildContext context,
                    {required currentLength, required isFocused, maxLength}) {
                  return _animatedContainer(currentLength);
                },
                decoration: emailInputDecoration(),
                focusNode: focusNodeTextFieldOne,
                //inputFormatters: [TextProjectInputFormatter()._formatter],
                keyboardType: TextInputType.emailAddress,
                maxLength: 100,
                textInputAction: TextInputAction.next,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: LanguageItems.passwordTitle,
                hintText: LanguageItems.passwordReceiver,
                filled: true,
              ),
              focusNode: focusNodeTextFieldTwo,
              maxLines: 4,
              minLines: 1,
              maxLength: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(
                  onPressed: () {}, child: const Text("Forgot your password?")),
              ElevatedButton(onPressed: () {}, child: const Text("Login"))
            ])
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }

  InputDecoration emailInputDecoration() {
    return const InputDecoration(
      prefixIcon: Icon(Icons.mail),
      labelText: LanguageItems.emailTitle,
      hintText: LanguageItems.emailReceiver,
      filled: true,
    );
  }

  InputDecoration passwordInputDecoration() {
    return const InputDecoration(
      prefixIcon: Icon(Icons.password),
      labelText: LanguageItems.passwordTitle,
      hintText: LanguageItems.passwordReceiver,
      filled: true,
    );
  }

  AnimatedContainer _animatedContainer(int currentLength) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Color.fromARGB(255, 255 - ((currentLength) * 10),
          0 + ((currentLength) * 10), 255 - ((currentLength))),
      height: 20,
      width: (20.0 + (currentLength * 10)),
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (oldValue.text == "a") {
      return newValue;
    } else {
      return newValue;
    }
  });
}
