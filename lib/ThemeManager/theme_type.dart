
import 'package:flutter/material.dart';
import 'package:test_app/ThemeManager/theme_mnager.dart';

abstract class ThemeTypes {
  Color? getColorKey(ColorKey colorKey, ThemeType themeMode);
  ThemeData? getThemeData(ThemeType themeType, ThemeData? defaultThemeData);
}
