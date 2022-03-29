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

@immutable
class Palette {
  //static const Color _kPink = Color(0xFFDCB9FF);
  static const int _kOrange = 0xFFFF8D70;
  static const int _kYellow = 0xFFFFDC98;
  static const int _kGreen = 0xFF28AD83;
  static const int _kPink2 = 0xFFF8A3FA;

  //static MaterialColor pink = generateMaterialColor(_pink2);
  //static MaterialColor orange = generateMaterialColor(_kOrange);
  //static MaterialColor yellow = generateMaterialColor(_kYellow);
  //static MaterialColor green = generateMaterialColor(_kGreen);

  //static const int _kPink = 0xFFDCB9FF;
  static const MaterialColor pink = MaterialColor(_kPink2, <int, Color>{
    50: Color(0xFFFEEAFD),
    100: Color(0xFFFAC9FB),
    200: Color(_kPink2),
    300: Color(0xFFF27CF5),
    400: Color(0xFFEA5CEC),
    500: Color(0xFFE140E5),
    600: Color(0xFFD03CDF),
    700: Color(0xFFBB36D6),
    800: Color(0xFFBB36D6),
    900: Color(0xFF862BC3),
  });

  static const MaterialColor green = MaterialColor(_kGreen, <int, Color>{
    50: Color(0xFFE0F3ED),
    100: Color(0xFFB3E2D1),
    200: Color(0xFF82D0B4),
    300: Color(0xFF50BC97),
    400: Color(_kGreen),
    500: Color(0xFF009E70),
    600: Color(0xFF009064),
    700: Color(0xFF008055),
    800: Color(0xFF007048),
    900: Color(0xFF00542E),
  });

  static const MaterialColor yellow = MaterialColor(_kYellow, <int, Color>{
    50: Color(0xFFFFF7E6),
    100: Color(0xFFFFEABF),
    200: Color(_kYellow),
    300: Color(0xFFFFD06F),
    400: Color(0xFFFFC551),
    500: Color(0xFFFFBC43),
    600: Color(0xFFFEAE3F),
    700: Color(0xFFFC9D3C),
    800: Color(0xFFF98D3A),
    900: Color(0xFFF67034),
  });

  static const MaterialColor orange = MaterialColor(_kOrange, <int, Color>{
    50: Color(0xFFFAEAE8),
    100: Color(0xFFFECDC0),
    200: Color(0xFFFEAD98),
    300: Color(_kOrange),
    400: Color(0xFFFF7351),
    500: Color(0xFFFF5A34),
    600: Color(0xFFF65430),
    700: Color(0xFFE84D2B),
    800: Color(0xFFDA4627),
    900: Color(0xFFC1391E),
  });
}
