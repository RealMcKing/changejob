import 'package:change_job/domain/factory/screen_factory.dart';

import 'package:flutter/material.dart';

abstract class MainNavigationRouteNames {
  static const loaderScreen = 'loader';
  static const authScreen = 'auth';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.loaderScreen: (_) => _screenFactory.makeLoader(),
    MainNavigationRouteNames.authScreen: (_) => _screenFactory.makeAuth(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        const widget = Scaffold(
          body: Center(
            child: Text('Navigation Error'),
          ),
        );
        return MaterialPageRoute(builder: (_) => widget);
    }
  }
}
