import 'dart:math';

import "package:flutter/material.dart";

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return const ImageZoomDialog();
                      });
                },
                child: const Icon(Icons.image_outlined)),
            FloatingActionButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return const GeneralUpdateDialog();
                      });
                },
                child: const Icon(Icons.upgrade_outlined)),
          ],
        ),
      ),
    );
  }
}

class GeneralUpdateDialog extends StatelessWidget {
  const GeneralUpdateDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Version update exists"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Close")),
        const SizedBox(width: 75),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const UpdateAlert();
                  },
                  fullscreenDialog: true,
                  settings: const RouteSettings()));
            },
            child: const Text("Update app")),
      ],
    );
  }
}

class ImageZoomDialog extends StatelessWidget {
  const ImageZoomDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: SizedBox(
            height: 400,
            width: 400,
            child: Stack(fit: StackFit.expand, children: [
              InteractiveViewer(
                child: Image.network(
                    "https://picsum.photos/400/400??random=${Random().nextInt(100000)}",
                    fit: BoxFit.cover),
              ),
              const Positioned(right: 10, top: 10, child: CloseButton())
            ])));
  }
}

class UpdateAlert extends StatefulWidget {
  const UpdateAlert({super.key});

  @override
  State<UpdateAlert> createState() => _UpdateAlertState();
}

class _UpdateAlertState extends State<UpdateAlert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const Text("Updating"), CloseButton()],
      ),
      actions: const [CircularProgressIndicator()],
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.symmetric(vertical: 30),
    );
  }
}

class CloseButton extends StatelessWidget {
  const CloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close_outlined));
  }
}
