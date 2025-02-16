import 'package:flutter/material.dart';

// Colors
final Color violet = HexColor('4A0E5C');
final Color gray = HexColor('e8e8e8');

// Converter From Hex to ARGB
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}