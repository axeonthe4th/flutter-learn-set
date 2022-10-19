import "package:flutter/material.dart";

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Durations.durationLow);
  }

  bool _isVisible = true;
  bool _opacity = true;
  late AnimationController controller;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _opacity = !_opacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true, title: MyAnimatedWidget(isVisible: _isVisible)),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                duration: Durations.durationLow,
                opacity: _opacity ? 1 : 0,
                child: Text(
                  "data",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontSize: 30, fontWeight: FontWeight.w300),
                )),
            trailing: IconButton(
                onPressed: _changeOpacity,
                icon: const Icon(Icons.precision_manufacturing_rounded)),
          ),
          AnimatedDefaultTextStyle(
            duration: Durations.durationLow,
            style: (_isVisible
                    ? Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontWeight: FontWeight.w300)
                    : Theme.of(context).textTheme.subtitle1) ??
                const TextStyle(),
            child: const Text("data"),
          ),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
          ),
          AnimatedContainer(
            color: Colors.lime,
            duration: Durations.durationLow,
            height: _isVisible ? 0 : MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.height * 0.2,
          ),
          Expanded(
              child: Stack(
            children: [
              AnimatedPositioned(
                left: _isVisible ? 50 : 10,
                curve: Curves.elasticOut,
                duration: Durations.durationLow,
                child: Text("data"),
              )
            ],
          )),
          Expanded(
            child: AnimatedList(itemBuilder: (context, index, animation) {
              return const Text("data");
            }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
    );
  }
}

class MyAnimatedWidget extends StatelessWidget {
  const MyAnimatedWidget({
    Key? key,
    required bool isVisible,
  })  : _isVisible = isVisible,
        super(key: key);

  final bool _isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: MyContainer(color: Colors.blue),
      secondChild: MyContainer(color: Colors.red.shade500),
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 1000),
    );
  }
}

class MyContainer extends StatelessWidget {
  MyContainer({
    required this.color,
    Key? key,
  }) : super(key: key);
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme MyTextTheme() {
    return Theme.of(this).textTheme;
  }
}

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("data", style: context.MyTextTheme().headline1);
  }
}

class Durations {
  static const Duration durationLow = Duration(milliseconds: 500);
}
