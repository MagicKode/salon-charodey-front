import 'package:flutter/material.dart';
import 'sections/main_app_bar.dart';
import 'sections/main_bottom_nav_bar.dart';
import '../../../uikit/colors/app_colors.dart';

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
    final Color logoColor = isDark ? AppColors.accentGold : AppColors.primary;

    return Scaffold(
      appBar: MainAppBar(isDark: isDark),
      body: Stack(
        children: [
          // Фоновый логотип (watermark)
          Positioned.fill(
            child: Opacity(
              opacity: 0.06,
              child: Center(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    logoColor,
                    BlendMode.srcATop,
                  ),
                  child: Image.asset(
                    'assets/logo/light_logo.webp',
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          // Основное содержимое
          body,
        ],
      ),
      bottomNavigationBar: MainBottomNavBar(
        currentIndex: currentIndex,
        onTap: onTap,
        isDark: isDark,
      ),
    );
  }
}