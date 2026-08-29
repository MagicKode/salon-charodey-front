import 'package:flutter/material.dart';
import 'package:salon_charodey_front/feature/core/homepagescreen/homepage_screen.dart';

import '../../config/device_config.dart';
import '../../feature/auth/splashscreen/splash_screen.dart';
import '../../uikit/colors/app_colors.dart';

void main() {
  print('🚀 Запуск на: ${isEmulator ? "ЭМУЛЯТОРЕ" : "РЕАЛЬНОМ УСТРОЙСТВЕ"}');
  print('🌐 Хост: $baseHost');

  runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Чародей',
      theme: _buildLightTheme(),
      darkTheme: _buildDarkTheme(),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePageScreen(),
      },
    );
  }

  ThemeData _buildLightTheme() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: const Color(0xFFF5F0EB),
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.accentGold,
        background: Color(0xFFF5F0EB),
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color(0xFF1A1A1A),
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.accentGold,
        background: Color(0xFF1A1A1A),
      ),
    );
  }
}
