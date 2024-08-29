import 'package:flutter/material.dart';
import 'package:test_app/ThemeManager/theme_mnager.dart';
import 'package:test_app/screen_util/flutter_screen_utils.dart';
import 'package:test_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeManager = ThemeManager();
    return ScreenUtilInit(
      designSize: const Size(375, 815),
      builder: () {
        return MaterialApp(
          theme: themeManager.getThemeData(ThemeType.LightMode, null),
          themeMode: ThemeMode.light,
          home: const MyHomePage(),
        );
      },
    );
  }
}