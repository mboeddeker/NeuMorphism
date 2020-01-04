import 'package:flutter/material.dart';

bool darkMode = false;

class AppColors {
  static Color lightBackground = Color(0xFFE0E5Ec);
  static Color darkBackground = Color(0xFF3B3B3B);
  static Color backgroundColor() {
    return darkMode ? AppColors.darkBackground : AppColors.lightBackground;
  }

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
  static List<BoxShadow> darkShadows(double offset, {double opacity = 1.0}) => [
        BoxShadow(
          color: Color(0xFF4D4D4D).withOpacity(0.8 * opacity),
          offset: Offset(-offset, -offset),
          blurRadius: 4,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0xFF000000).withOpacity(0.7 * opacity),
          offset: Offset(offset, offset),
          blurRadius: 4,
          spreadRadius: 0,
        ),
      ];

  static List<BoxShadow> shadows(double offset, {double opacity = 1.0}) {
    return darkMode
        ? AppColors.darkShadows(offset, opacity: opacity)
        : AppColors.lightShadows(offset, opacity: opacity);
  }
}
