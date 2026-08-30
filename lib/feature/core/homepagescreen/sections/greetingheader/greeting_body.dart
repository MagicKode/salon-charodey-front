import 'package:flutter/material.dart';
import '../../../../../uikit/colors/app_colors.dart';

class GreetingBody extends StatelessWidget {
  final String userName;

  const GreetingBody({super.key, this.userName = 'Гость'});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Text(
      'Приветствую, $userName!',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: colors.textPrimary,
      ),
    );
  }
}
