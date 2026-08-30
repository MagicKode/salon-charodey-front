import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  final Animation<double> animation;

  const SplashLogo({super.key, required this.animation});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: Image.asset(
        'assets/splashscreen/splash_screen.jpg',
        width: 200,
        height: 200,
        fit: BoxFit.contain,
      ),
    );
  }
}
