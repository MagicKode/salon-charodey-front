import 'package:flutter/material.dart';
import '../../../../uikit/colors/app_colors.dart';

class MainBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final bool isDark;

  const MainBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    final Color navBarColor = isDark ? colors.background : AppColors.primaryDark;
    final Color iconColor = isDark ? colors.textPrimary : AppColors.accentGold;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: navBarColor,
      selectedItemColor: iconColor,
      unselectedItemColor: iconColor.withOpacity(0.5),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_outlined),
          label: 'Каталог',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Профиль',
        ),
      ],
    );
  }
}
