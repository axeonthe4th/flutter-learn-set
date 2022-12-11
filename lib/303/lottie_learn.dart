import 'package:first/product/constant/lottie_items.dart';
import 'package:first/product/global/theme_notifier.dart';
import 'package:first/product/navigator/navigator_routes.dart';
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
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).pushReplacementNamed(NavigatorNames.home.withParaf);
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
      body: Column(
        children: const [Expanded(child: DecorationLottie())],
      ),
    );
  }
}

class DecorationLottie extends StatelessWidget {
  const DecorationLottie({
    Key? key,
  }) : super(key: key);
  final String _loadingLottiePath = "assets/lottie/loading.json";
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(_loadingLottiePath, fit: BoxFit.none);
  }
}
