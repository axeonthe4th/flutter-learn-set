import 'package:first/product/constant/lottie_items.dart';
import 'package:first/product/global/theme_notifier.dart';
import "package:flutter/material.dart";
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../product/constant/duration_items.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: DurationItems.durationFast());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async {
                await controller.animateTo(isLight ? 0.5 : 1);
                isLight = !isLight;
                Future.microtask(() {
                  context.read<ThemeNotifier>().changeTheme();
                });
              },
              child: Lottie.asset(LottieItems.themechanger.lottiePath,
                  repeat: false, controller: controller))
        ],
      ),
      body: Center(
        child: Column(
          children: const [LoadingLottie(), DecorationLottie()],
        ),
      ),
    );
  }
}

class DecorationLottie extends StatelessWidget {
  const DecorationLottie({
    Key? key,
  }) : super(key: key);
  final String _decorationLottieUrl =
      "https://assets7.lottiefiles.com/packages/lf20_1cfgmvnc.json";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Lottie.network(_decorationLottieUrl),
    );
  }
}

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({Key? key}) : super(key: key);

  final String _loadingLottieUrl =
      "https://assets10.lottiefiles.com/datafiles/LZyeA614QaESwNk/data.json";

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Lottie.network(_loadingLottieUrl));
  }
}
