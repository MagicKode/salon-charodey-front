import 'package:flutter/material.dart';
import '../../feature/auth/onboarding/onboarding_screen.dart';
import '../../feature/auth/splashscreen/splash_screen.dart';
import '../../uikit/colors/app_colors.dart';
import '../../config/device_config.dart';

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
        '/home': (context) => const HomeScreen(),
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

// ---------- HomeScreen (заглушка) ----------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главная')),
      body: const Center(child: Text('Добро пожаловать в Чародей!')),
    );
  }
}
