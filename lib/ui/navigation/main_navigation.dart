import 'package:flutter/material.dart';

import 'package:change_job/domain/factory/screen_factory.dart';

abstract class MainNavigationRouteNames {
  static const loaderScreen = 'loader';
  static const authScreen = 'auth';
  static const tagsScreen = 'tags';
  static const mainScreen = 'main';
  static const vacancyDetailsScreen = 'main/vacancyDetails';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.loaderScreen: (_) => _screenFactory.makeLoader(),
    MainNavigationRouteNames.authScreen: (_) => _screenFactory.makeAuth(),
    MainNavigationRouteNames.tagsScreen: (_) => _screenFactory.makeTags(),
    MainNavigationRouteNames.mainScreen: (_) => _screenFactory.makeMain(),
    MainNavigationRouteNames.vacancyDetailsScreen: (_) =>
        _screenFactory.makeVacancyDetails(),
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
