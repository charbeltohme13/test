import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_app/ThemeManager/theme_mnager.dart';
import 'package:test_app/ThemeManager/theme_type.dart';

class CommonThemeType implements ThemeTypes {
  static final CommonThemeType _instance = CommonThemeType._internal();

  factory CommonThemeType() {
    return _instance;
  }

  CommonThemeType._internal();
  @override
  Color? getColorKey(ColorKey colorKey, ThemeType themeMode) {
    return this.getNonOptionalColorForKey(colorKey, themeMode);
  }

  @override
  ThemeData? getThemeData(ThemeType themeType, ThemeData? defaultThemeData) {
    return getNonOptionalThemeData(themeType, defaultThemeData);
  }

  Color getNonOptionalColorForKey(ColorKey colorKey, ThemeType themeMode) {
    switch (colorKey) {
      case ColorKey.Green:
        return Color(0xFF00A551);
      case ColorKey.PrimaryColor:
        return Color(0xFFE0ECF5);
      case ColorKey.White:
        return Colors.white;
      case ColorKey.Black:
        return Color(0xFF1E1E1E);
      case ColorKey.lightGray:
        return Color(0xFFC7C7C7);
      case ColorKey.PrimaryGreen:
        return Color(0xFF00A551);
    }
  }

  ThemeData getNonOptionalThemeData(
      ThemeType themeMode, ThemeData? defaultThemeData) {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: getColorKey(
            ColorKey.Green, themeMode), // Set your desired color here
      ),
      scaffoldBackgroundColor: getColorKey(ColorKey.White, themeMode),
      useMaterial3: true,
      primaryColor: getColorKey(ColorKey.White, themeMode),
      appBarTheme: AppBarTheme(
        backgroundColor: getColorKey(ColorKey.White, themeMode),
        surfaceTintColor: getColorKey(ColorKey.White, themeMode),
        centerTitle: true,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor:
              getColorKey(ColorKey.Green, themeMode), // Set desired color
        ),
      ),
    );
  }
}
