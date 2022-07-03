import 'package:flutter/material.dart';
import 'package:timezone_project/widget/text_widget.dart';

Widget clockContainer(BuildContext context, String text) {
  return Container(
      height: MediaQuery.of(context).size.height/6,
      width: MediaQuery.of(context).size.height/6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Theme.of(context).bottomAppBarColor,
      ),
      child: Center(child: textWithSize(isBold: true, text, Theme.of(context).canvasColor, 54),
      ),
  );
}
