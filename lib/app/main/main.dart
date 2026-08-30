import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../config/device_config.dart';
import '../../config/app_router.dart';
import '../../uikit/colors/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final themeIndex = prefs.getInt('theme_mode') ?? 0;
  final initialTheme = ThemeMode.values[themeIndex];

  print('🚀 Запуск на: ${isEmulator ? "ЭМУЛЯТОРЕ" : "РЕАЛЬНОМ УСТРОЙСТВЕ"}');
  print('🌐 Хост: $baseHost');

  runApp(MyApp(initialTheme: initialTheme));
}

class MyApp extends StatefulWidget {
  final ThemeMode initialTheme;
  const MyApp({super.key, required this.initialTheme});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ValueNotifier<ThemeMode> _themeNotifier;
  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _themeNotifier = ValueNotifier<ThemeMode>(widget.initialTheme);
    _appRouter = AppRouter(themeNotifier: _themeNotifier);
  }

  @override
  void dispose() {
    _themeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _themeNotifier,
      builder: (context, themeMode, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Чародей',
          theme: _buildLightTheme(),
          darkTheme: _buildDarkTheme(),
          themeMode: themeMode,
          routerConfig: _appRouter.router,
        );
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
