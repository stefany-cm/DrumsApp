import 'package:flutter/material.dart';

Widget title1(String text, TextAlign textAlingment) {
  final title = Text(
    text,
    textAlign: textAlingment,
    style: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
  return title;
}

Widget title2(String text, TextAlign textAlingment) {
  final title = Text(
      text,
      textAlign: textAlingment,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      )
    );
  return title;
}

Widget title3(String text, TextAlign textAlingment) {
  final title = Text(
      text,
      textAlign: textAlingment,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      )
    );
  return title;
}