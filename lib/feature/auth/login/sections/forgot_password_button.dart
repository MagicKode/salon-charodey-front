import 'package:flutter/material.dart';
import '../../../../uikit/colors/app_colors.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return TextButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Восстановление пароля (заглушка)')),
        );
      },
      child: Text(
        'Забыли пароль?',
        style: TextStyle(color: colors.textSecondary),
      ),
    );
  }
}
