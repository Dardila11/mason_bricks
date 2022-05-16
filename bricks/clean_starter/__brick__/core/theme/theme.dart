import 'package:flutter/material.dart';

abstract class AppColors {}

abstract class _LightColors {
  static const background = Colors.white;
}

abstract class _DarkColors {
  static const background = Colors.black;
}

class AppTheme {
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  final lightBase = ThemeData.light();
  final darkBase = ThemeData.dark();

  ThemeData get light => ThemeData(
        brightness: Brightness.light,
        visualDensity: visualDensity,
        backgroundColor: _LightColors.background,
        scaffoldBackgroundColor: _LightColors.background,
      );

  ThemeData get dark => ThemeData(
        brightness: Brightness.dark,
        visualDensity: visualDensity,
        backgroundColor: _DarkColors.background,
        scaffoldBackgroundColor: _DarkColors.background,
      );
}
