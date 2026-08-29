import 'package:flutter/material.dart';
import '../../../uikit/colors/app_colors.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home,
            size: 80,
            color: isDark ? colors.textPrimary : AppColors.accentGold,
          ),
          const SizedBox(height: 16),
          Text(
            'Главная страница',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: isDark ? colors.textPrimary : colors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Здесь будет контент',
            style: TextStyle(
              fontSize: 16,
              color: isDark ? colors.textSecondary : colors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
