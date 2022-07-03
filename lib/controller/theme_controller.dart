import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {

  final Rx<ThemeMode> _theme;
  final Rx<bool> _isDark;

  ThemeController(ThemeMode theme, bool isDark) : _theme = theme.obs, _isDark = isDark.obs;

  void changeThemeMode(ThemeMode themeMode) {
    Get.changeThemeMode(themeMode);
    _theme(themeMode);
  }

  void changeDark(bool isDarKnow) {
    _isDark(isDarKnow);
  }

  bool isDark() {
    return _isDark.value;
  }

  ThemeMode getTheme() {
    return _theme.value;
  }

}