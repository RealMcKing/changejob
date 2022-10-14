import 'package:flutter/material.dart';
import 'package:change_job/ui/navigation/main_navigation.dart';
import 'package:change_job/ui/theme/theme.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Job',
      debugShowCheckedModeBanner: false,
      theme: ChangeJobTheme.darkTheme,
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
      initialRoute: MainNavigationRouteNames.resumePDFScreen,
    );
  }
}
