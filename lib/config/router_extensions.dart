import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'app_router.dart';

extension RouterExtensions on BuildContext {
  void goToSplash() => go(AppRouter.splash);
  void goToOnboarding() => go(AppRouter.onboarding);
  void goToHome() => go(AppRouter.home);
  void goToProfile() => go(AppRouter.profile);

  void pushToProfile() => push(AppRouter.profile);
  void pop() => Navigator.of(this).pop();
}
