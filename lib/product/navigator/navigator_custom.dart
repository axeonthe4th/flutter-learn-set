import 'package:flutter/material.dart';

import '../../303/lottie_learn.dart';
import '../../303/navigator/navigate_home_detail_view.dart';

class NavigatorCustom {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name == "/") {
      return _navigateToNormal(LottieLearn());
    } else if (routeSettings.name == "/detail") {
      final _id = routeSettings.arguments;
      return _navigateToNormal(
          NavigateHomeDetailView(id: _id is String ? _id : null));
    }
    return null;
  }

  Route<dynamic>? _navigateToNormal(Widget child) {
    return MaterialPageRoute(
      builder: (context) {
        return child;
      },
    );
  }
}
