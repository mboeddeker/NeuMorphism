import 'package:flutter/material.dart';

class AppColors {
  static Color lightBackground = Color(0xFFE0E5Ec);
  static Color darkBackground = Color(0xFFE0E5Ec);
  static List<BoxShadow> lightShadows(double offset, {double opacity = 1.0}) => [
        BoxShadow(
          color: Color(0xFFFFFFFF).withOpacity(0.5 * opacity),
          offset: Offset(-offset, -offset),
          blurRadius: 4,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0xFFA3B1C6).withOpacity(0.8 * opacity),
          offset: Offset(offset, offset),
          blurRadius: 4,
          spreadRadius: 0,
        ),
      ];
}
