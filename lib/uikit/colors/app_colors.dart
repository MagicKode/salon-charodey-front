import 'package:flutter/material.dart';

class AppColors {
  // ========== 1. Брендовые цвета ==========
  static const Color primary = Color(0xFF8B1C1C);       // бордовый (статус акцент тёмно-красный)
  static const Color primaryDark = Color(0xFF6B2737);   // тёмно-винный
  static const Color secondary = Color(0xFF2E4F2E);     // тёмно-зелёный
  static const Color accentGold = Color(0xFFC9A96E);    // золотой

  // ========== 2. Фоновые цвета ==========
  static const Color backgroundDark = Color(0xFF1A1A1A);
  static const Color backgroundLight = Color(0xFFF5F0EB);

  // ========== 3. Цвета текста ==========
  static const Color textPrimary = Color(0xFFFFFFFF);   // белый (основной)
  static const Color textSecondary = Color(0xFFB0B0B0); // серый (второстепенный)

  // ========== 4. Оверлеи (полупрозрачные слои) ==========
  static const Color overlayDark = Color(0xB3000000);   // чёрный с opacity 0.7 (для затемнения)
  // Альтернативные варианты с разной прозрачностью можно создать через методы, но пока оставим константу.

  // ========== 5. Системные / дополнительные ==========
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);
}