import 'package:first/101/custom_widget_learn.dart';
import 'package:first/101/icon_learn.dart';
import 'package:first/101/image_learn.dart';
import 'package:first/101/stack_learn.dart';
import 'package:first/101/stateful_learn.dart';
import "package:flutter/material.dart";

class PageLearnView extends StatefulWidget {
  const PageLearnView({super.key});

  @override
  State<PageLearnView> createState() => _PageLearnViewState();
}

class _PageLearnViewState extends State<PageLearnView> {
  final _pageController = PageController(viewportFraction: 1);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          const ImageLearn(),
          const StatefulLearn(),
          IconLearnView(),
          const StackLearn(),
          const CustomWidgetLearn()
        ],
      ),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text("$_currentPageIndex"),
          ),
          const Spacer(),
          FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_left)),
          FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_right)),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
