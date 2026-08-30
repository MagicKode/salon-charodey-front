import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../uikit/colors/app_colors.dart';
import '../feature/auth/login/login_screen.dart';
import '../feature/auth/onboarding/onboarding_screen.dart';
import '../feature/auth/splashscreen/splash_screen.dart';
import '../feature/core/homepagescreen/homepage_screen.dart';
import '../feature/core/profilescreen/profile_screen.dart';

class AppRouter {
  final ValueNotifier<ThemeMode> themeNotifier;

  AppRouter({required this.themeNotifier});

  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String login = '/login';

  late final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        name: 'splash',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: onboarding,
        name: 'onboarding',
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        path: login,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: home,
        name: 'home',
        builder: (context, state) => HomePageScreen(
          themeNotifier: themeNotifier,
        ),
      ),
      GoRoute(
        path: profile,
        name: 'profile',
        builder: (context, state) => ProfileScreen(
          themeNotifier: themeNotifier,
        ),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          'Страница не найдена',
          style: TextStyle(color: AppColors.of(context).textPrimary),
        ),
      ),
    ),
  );
}
