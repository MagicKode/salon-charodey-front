import 'package:flutter/material.dart';

abstract class AppColorsTheme {
  Color get background;
  Color get textPrimary;
  Color get textSecondary;
  Color get overlayDark;
  Color get skipButtonBackground;
}

class DarkColors implements AppColorsTheme {
  @override
  Color get background => const Color(0xFF1A1A1A);
  @override
  Color get textPrimary => const Color(0xFFFFFFFF);
  @override
  Color get textSecondary => const Color(0xFFB0B0B0);
  @override
  Color get overlayDark => const Color(0xB3000000);
  @override
  Color get skipButtonBackground => const Color(0x66000000);
}

class LightColors implements AppColorsTheme {
  @override
  Color get background => const Color(0xFFF5F0EB);
  @override
  Color get textPrimary => const Color(0xFF1A1A1A);
  @override
  Color get textSecondary => const Color(0xFF666666);
  @override
  Color get overlayDark => const Color(0x4D000000);
  @override
  Color get skipButtonBackground => const Color(0x66000000);
}

class AppColors {
  // Брендовые цвета (не зависят от темы)
  static const Color primary = Color(0xFF8B1C1C);
  static const Color primaryDark = Color(0xFF6B2737);
  static const Color secondary = Color(0xFF2E4F2E);
  static const Color accentGold = Color(0xFFC9A96E);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);

  static AppColorsTheme of(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.dark ? DarkColors() : LightColors();
  }
}
