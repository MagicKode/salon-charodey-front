import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../config/app_router.dart';
import '../../../../uikit/colors/app_colors.dart';

class LogoutSection extends StatelessWidget {
  const LogoutSection({super.key});

  Future<void> _logout(BuildContext context) async {
    // Показываем диалог подтверждения
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Выход'),
        content: const Text('Вы уверены, что хотите выйти из аккаунта?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Выйти'),
          ),
        ],
      ),
    );

    if (confirm == true && context.mounted) {
      // Удаляем флаг авторизации
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('is_logged_in');

      // Переход на страницу логина
      context.go(AppRouter.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return ListTile(
      leading: Icon(Icons.logout, color: AppColors.primary),
      title: Text(
        'Выйти',
        style: TextStyle(color: AppColors.primary),
      ),
      onTap: () => _logout(context),
    );
  }
}
