import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_charodey_front/feature/auth/splashscreen/splash_screen_body.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../config/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _targetRoute = AppRouter.onboarding;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    _checkAuth();

    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.go(_targetRoute);
      }
    });
  }

  Future<void> _checkAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('is_logged_in') ?? false;

    if (mounted) {
      setState(() {
        _targetRoute = isLoggedIn ? AppRouter.home : AppRouter.onboarding;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SplashBody();
  }
}
