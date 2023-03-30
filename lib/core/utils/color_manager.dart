import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColor = Colors.red;
  static const Color secondaryColor = Color.fromARGB(255, 7, 44, 114);
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static const Color green = Color.fromARGB(255, 71, 136, 74);
  static const Color blue = Colors.blue;
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
