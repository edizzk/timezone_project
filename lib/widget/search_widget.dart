import 'package:flutter/material.dart';
import 'package:timezone_project/controller/timezone_controller.dart';

import '../utils/theme.dart';

Container searchWidget (TimeZoneController timeZoneController) {
  return Container(
    alignment: Alignment.bottomCenter,
    height: 40,
    width: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      border: Border.all(color: Colors.black26),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: TextField(
      showCursor: false,
      style: const TextStyle(color: Themes.searchBarTextColor),
      onChanged: (value) {timeZoneController.onTextChanged(value);},
      decoration: InputDecoration(
        hintText: "Arama",
        hintStyle: TextStyle(color: Themes.searchBarTextColor.withOpacity(0.5)),
        icon: const Icon(Icons.search, color: Themes.searchBarTextColor),
      ),
    ),
  );
}