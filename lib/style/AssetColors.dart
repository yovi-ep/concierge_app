
import 'package:flutter/material.dart';

extension AssetColors on Colors {
  static const Map<int, Color> _primaryColor = {
    50: Color(0xFF3AA8E7),
    100: Color(0xFF3AA8E7),
    200: Color(0xFF3AA8E7),
    300: Color(0xFF3AA8E7),
    400: Color(0xFF3AA8E7),
    500: Color(0xFF3AA8E7),
    600: Color(0xFF3AA8E7),
    700: Color(0xFF3AA8E7),
    800: Color(0xFF3AA8E7),
    900: Color(0xFF3AA8E7),
  };
  static const MaterialColor primaryColor =  MaterialColor(0xFF3AA8E7, AssetColors._primaryColor);
  
  static const Color fontColorPrimary = Color(0xFF333333);
  static const Color fontColorSecondary = Color(0xFF828282);

  static const Color blackTransparent = Color(0x70000000);
}