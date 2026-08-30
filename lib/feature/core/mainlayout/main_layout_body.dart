import 'package:flutter/material.dart';
import 'sections/main_app_bar.dart';
import 'sections/main_bottom_nav_bar.dart';

class MainLayoutBody extends StatelessWidget {
  final Widget body;
  final int currentIndex;
  final Function(int) onTap;
  final bool isDark;

  const MainLayoutBody({
    super.key,
    required this.body,
    required this.currentIndex,
    required this.onTap,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(isDark: isDark),
      body: body,
      bottomNavigationBar: MainBottomNavBar(
        currentIndex: currentIndex,
        onTap: onTap,
        isDark: isDark,
      ),
    );
  }
}
