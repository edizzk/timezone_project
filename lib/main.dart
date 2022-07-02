import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timezone_project/controller/theme_controller.dart';

import 'utils/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TimeZone Project',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: MyHomePage(title: 'TimeZone Project'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {
              Get.isDarkMode
                  ? themeController.changeThemeMode(ThemeMode.light)
                  : themeController.changeThemeMode(ThemeMode.dark);
            },
            icon: const Icon(Icons.lightbulb),
          )
        ],
      ),
      body: const Center(),
    );
  }
}
