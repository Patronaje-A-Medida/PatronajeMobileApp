import 'dart:math';

import 'package:flutter/material.dart';

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1,
    );

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

class Palette {
  static const Color _kPink = Color(0xFFDCB9FF);
  static const Color _kOrange = Color(0xFFFF8D70);
  static const Color _kYellow = Color(0xFFFFDC98);
  static const Color _kGreen = Color(0xFF28AD83);

  static const Color _pinkAccent = Color(0xFFF8A3FA);

  static MaterialColor pink = generateMaterialColor(_pinkAccent);
  static MaterialColor orange = generateMaterialColor(_kOrange);
  static MaterialColor yellow = generateMaterialColor(_kYellow);
  static MaterialColor green = generateMaterialColor(_kGreen);

  //static const int _kPink = 0xFFDCB9FF;
  /*static MaterialColor pink = MaterialColor(_kPink.value, <int, Color>{
    50: tintColor(_kPink, 0.9),
    100: tintColor(_kPink, 0.8),
    200: tintColor(_kPink, 0.6),
    300: tintColor(_kPink, 0.4),
    400: tintColor(_kPink, 0.2),
    500: _kPink,
    600: shadeColor(_kPink, 0.1),
    700: shadeColor(_kPink, 0.2),
    800: shadeColor(_kPink, 0.3),
    900: shadeColor(_kPink, 0.4),
  });*/

}
