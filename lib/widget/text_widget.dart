import 'package:flutter/material.dart';

Widget textWithSize(String text , Color color, double textSize, {bool isBold = false}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: color,
      fontSize: textSize,
    ),
  );
}