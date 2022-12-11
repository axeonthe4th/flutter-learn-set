import '../../303/lottie_learn.dart';
import '../../303/navigator/navigate_home_detail_view.dart';
import '../../303/navigator/navigate_home_view.dart';

class NavigatorRoutes {
  static const _paraf = "/";
  final items = {
    _paraf: (context) => const LottieLearn(),
    NavigatorNames.home.withParaf: (context) => const NavigateHomeView(),
    NavigatorNames.detail.withParaf: (context) =>
        const NavigateHomeDetailView(),
  };
}

enum NavigatorNames { init, home, detail }

extension NavigatorNamesExtension on NavigatorNames {
  String get withParaf => "/$name";
}
