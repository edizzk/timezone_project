import 'package:flutter/material.dart';

import '../utils/theme.dart';

Container searchWidget () {

  final controller = TextEditingController();

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
      controller: controller,
      decoration: const InputDecoration(

        icon: Icon(Icons.search, color: Themes.searchBarTextColor),
      ),
    ),
  );
}