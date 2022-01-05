import 'dart:ui';

import 'package:flutter/material.dart';

class CustomColor {
  static Color bgPrimary = const Color(0xcFFEDF3FF);
  static Color primaryBlue = const Color(0xcFF4317F0);
}

class CustomPadding {
  static EdgeInsets mainHorizontal = const EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets mainVertical = const EdgeInsets.symmetric(vertical: 40);
}

class CustomMargin {
  static EdgeInsets mainHorizontal = const EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets mainVertical = const EdgeInsets.symmetric(vertical: 40);
}

class CustomText {
  static TextStyle title = const TextStyle(
      fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black);
  static TextStyle content = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87);
  static TextStyle subtitle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black54);
}

class CustomCheckbox {
  static BoxDecoration active = BoxDecoration(
      border: Border.all(width: 2, color: CustomColor.primaryBlue),
      color: CustomColor.bgPrimary,
      borderRadius: BorderRadius.circular(100));
  static BoxDecoration normal = BoxDecoration(
      border: Border.all(width: 2, color: CustomColor.primaryBlue),
      color: CustomColor.bgPrimary,
      borderRadius: BorderRadius.circular(100));
}
