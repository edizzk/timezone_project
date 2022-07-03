import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          title: Padding(padding: const EdgeInsets.only(left: 10, bottom: 10), child: appBarTextStack(title, themeController, context)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
              color: Theme.of(context).bottomAppBarColor,
            ),
          ),
        );
}