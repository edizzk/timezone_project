import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/date_formatter.dart';
import '../widget/text_widget.dart';
import 'package:intl/intl.dart';

import '../controller/theme_controller.dart';
import 'search_widget.dart';

PreferredSize buildAppBar(String title, BuildContext context, ThemeController themeController) {

  final appBarHeight = MediaQuery.of(context).size.height/5.5;

  return PreferredSize(
    preferredSize: Size.fromHeight(appBarHeight),
    child: Stack(
      children: [
        Padding(padding: const EdgeInsets.only(bottom: 12), child: appBarMethod(appBarHeight, title, themeController, context)),
        Align(alignment: Alignment.bottomCenter, child: searchWidget()),
      ],
    ),
  );
}

AppBar appBarMethod(double appBarHeight, String title, ThemeController themeController, BuildContext context) {
  return AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: appBarHeight,
          title: Padding(padding: const EdgeInsets.only(left: 20, bottom: 10 ), child: appBarTextStack(title, themeController, context)),
          actions: [
            iconButton(themeController, context),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
              color: Theme.of(context).bottomAppBarColor,
            ),
          ),
        );
}

Widget appBarTextStack(String title, ThemeController themeController, BuildContext context) {
  var date = DateTime.now();
  return Column(
    mainAxisSize: MainAxisSize.max,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      textWithSize("Günaydın, Özgür!", Theme.of(context).accentColor, 16, isBold: true),
      Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child:
        textWithSize(DateFormat('HH:mm').format(date), Theme.of(context).accentColor, 24, isBold: true),
      ),
       textWithSize("${date.day} ${monthFormatter(date)}, ${dayFormatter(date)}", Theme.of(context).accentColor, 16, isBold: true),
    ],
  );
}


IconButton iconButton(ThemeController themeController, BuildContext context) {
  return IconButton(
      onPressed: () {
        Get.isDarkMode
            ? themeController.changeThemeMode(ThemeMode.light)
            : themeController.changeThemeMode(ThemeMode.dark);
        themeController.changeDark(Get.isDarkMode);
      },
      color: Theme.of(context).accentColor,
      icon: Get.isDarkMode ? const Icon(Icons.lightbulb): const Icon(Icons.lightbulb),
    );
}