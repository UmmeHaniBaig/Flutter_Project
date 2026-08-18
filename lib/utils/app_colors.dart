import 'package:flutter/material.dart';

/// Central place for the app's red food-theme colors.
/// Keeping colors here (instead of hard-coding hex codes in every
/// screen) is what makes the UI easy to re-theme later.
class AppColors {
  static const Color primary = Color(0xFFB0201D);
  static const Color primaryDark = Color(0xFF6E0D0D);
  static const Color primaryLight = Color(0xFFD94A3D);
  static const Color background = Colors.white;
  static const Color textDark = Color(0xFF2B2B2B);
  static const Color textLight = Colors.white;
  static const Color muted = Color(0xFF9E9E9E);
  static const Color cardShadow = Color(0x1A000000);

  static const LinearGradient redGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primaryLight, primary, primaryDark],
  );
}
