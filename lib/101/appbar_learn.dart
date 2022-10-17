import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = "welcome learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        toolbarTextStyle: const TextStyle(color: Colors.cyan),
        leading: const Icon(Icons.chevron_left),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leadingWidth: 56,
        actionsIconTheme: const IconThemeData(color: Colors.purple),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
