import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(),
    primaryColor: Colors.white,
    accentColor: const Color(0xFF002359),
    bottomAppBarColor: const Color.fromRGBO(210, 238, 255, 1),
  );
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    primaryColor: const Color(0xFF002359),
    accentColor: Colors.white,
    bottomAppBarColor: const Color.fromRGBO(2, 50, 125, 1),
  );

  static const searchBarTextColor = Color(0xFF002359);
}
