import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/theme_controller.dart';
import '../controller/timezone_controller.dart';
import '../widget/app_bar.dart';
import '../widget/timezone_item_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final themeController = Get.put(ThemeController(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark, Get.isDarkMode));
  final timezoneController = Get.put(TimeZoneController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(title, context, themeController),
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 50),
        child: ListView.builder(
          itemCount: timezoneController.timezoneList.length,
          itemBuilder: (BuildContext context, int index) {
            return buildCard(context, index, timezoneController);
         },
        ),
      )
    );
  }
}
