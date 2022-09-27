import 'package:flutter/material.dart';

import 'package:change_job/ui/navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Job',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Archia',
      ),
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
      initialRoute: MainNavigationRouteNames.authScreen,
    );
  }
}
