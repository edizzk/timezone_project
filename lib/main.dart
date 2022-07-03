import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/theme.dart';
import 'view/home_view.dart';


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
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'TimeZone Project'),
    );
  }
}
