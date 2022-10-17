import 'package:first/101/text_field_learn.dart';
import 'package:first/101/list_view_learn.dart';
import 'package:first/101/appbar_learn.dart';
import 'package:flutter/material.dart';
import "package:first/101/list_view_builder_example.dart";

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: _myFloatingActionButton(),
          appBar: AppBar(),
          body: _tabbarView(),
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchedValue,
            child: TabBar(
                labelColor: Colors.green,
                unselectedLabelColor: Colors.red,
                padding: const EdgeInsets.all(5),
                onTap: (int index) {},
                isScrollable: false,
                indicatorColor: Colors.white,
                controller: _tabController,
                tabs: [
                  Tab(text: "home"),
                  Tab(text: "home"),
                  Tab(text: "home"),
                  Tab(text: "home")
                ]),
          ),
        ));
  }

  FloatingActionButton _myFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 206, 69, 0),
      onPressed: () {
        _tabController.animateTo(_MyTabViews.home.index);
      },
      child: const Icon(Icons.arrow_back, color: Colors.white),
    );
  }

  TabBar _myTabView() {
    return TabBar(
        labelColor: Colors.green,
        unselectedLabelColor: Colors.red,
        padding: const EdgeInsets.all(5),
        onTap: (int index) {},
        isScrollable: false,
        indicatorColor: Colors.white,
        controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList());
  }

  TabBarView _tabbarView() {
    return TabBarView(
      controller: _tabController,
      children: const [
        ListViewLearn(),
        TextFieldLearn(),
        ListViewBuilderLearn(),
        AppBarLearnView(),
      ],
    );
  }
}

enum _MyTabViews { home, login, favorited, profile }

extension _MyTabViewsExtension on _MyTabViews {}
