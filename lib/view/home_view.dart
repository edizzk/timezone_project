import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/theme_controller.dart';
import '../widget/app_bar.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final themeController = Get.put(ThemeController(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark, Get.isDarkMode));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title, context, themeController),
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(),
    );
  }
}
