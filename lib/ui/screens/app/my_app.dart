import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          enableFeedback: true,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Colors.transparent,
          selectedIconTheme: IconThemeData(
            color: Color(0xFFFFFFFF),
            size: 26.0,
            shadows: [
              BoxShadow(
                color: Color(0x87FFFFFF),
                spreadRadius: 15,
                blurRadius: 15,
                offset: Offset(-1, 0),
              ),
            ],
          ),
          unselectedIconTheme:
              IconThemeData(color: Color(0xFF006657), size: 26.0),
          selectedItemColor: Color(0xFFFFFFFF),
          unselectedItemColor: Color(0xFF006657),
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          prefixIconColor: Color(0x80FFFFFF),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          hintStyle: TextStyle(
            color: Color(0x80FFFFFF),
            fontFamily: 'Archia',
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
        ),
        scaffoldBackgroundColor: Colors.transparent,
        fontFamily: 'Archia',
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        textSelectionTheme: const TextSelectionThemeData(
          selectionHandleColor: Color(0xFF38FFD1),
        ),
      ),
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
      initialRoute: MainNavigationRouteNames.vacancyDetailsScreen,
    );
  }
}
