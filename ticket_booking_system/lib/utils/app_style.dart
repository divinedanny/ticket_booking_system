// import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFF37B67);
  static Color searchIconColor = const Color(0xFFBFC205);
  static Color searchBarColor = const Color(0xFFF4f6fd);
  static TextStyle textStyle =
      TextStyle(fontSize: 15, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 22, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 27, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 18, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 13, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle3G = TextStyle(
      fontSize: 18, color: Colors.grey.shade500, fontWeight: FontWeight.bold);
  static TextStyle inColorText =
      TextStyle(fontSize: 13, color: bgColor, fontWeight: FontWeight.w500);
}

class StylesDark {}
