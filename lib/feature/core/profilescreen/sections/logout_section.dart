import 'package:flutter/material.dart';

import '../../../../uikit/colors/app_colors.dart';

class LogoutSection extends StatelessWidget {
  const LogoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return ListTile(
      leading: Icon(Icons.logout, color: AppColors.primary),
      title: Text('Выйти', style: TextStyle(color: AppColors.primary)),
      onTap: () {
        // Пока просто показываем диалог
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Выход'),
            content: const Text('Вы уверены, что хотите выйти?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Отмена'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Выход (заглушка)')),
                  );
                },
                child: const Text('Выйти'),
              ),
            ],
          ),
        );
      },
    );
  }
}
