import 'package:flutter/material.dart';
import '../../../../uikit/colors/app_colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isDark;

  const MainAppBar({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    final Color headerColor = isDark ? colors.background : AppColors.primaryDark;
    final Color iconColor = isDark ? colors.textPrimary : AppColors.accentGold;

    return AppBar(
      backgroundColor: headerColor,
      foregroundColor: iconColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Чародей',
        style: TextStyle(
          color: iconColor,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
