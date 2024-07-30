import 'package:flutter/material.dart';

class AppWidgets {
  static const shadow = [
    BoxShadow(
      color: Color(0x3F000000),
      blurRadius: 1,
      offset: Offset(0, 1),
      spreadRadius: 0,
    )
  ];
  static ShapeDecoration  decration = ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    shadows: AppWidgets.shadow,
  );
}
