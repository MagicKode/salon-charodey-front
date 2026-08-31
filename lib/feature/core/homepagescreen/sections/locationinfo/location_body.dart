import 'package:flutter/material.dart';

import '../../../../../uikit/colors/app_colors.dart';

class LocationBody extends StatelessWidget {
  const LocationBody({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Мы находимся:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: colors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Левая часть: адрес и время работы
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'проспект. Независимости, 14',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: colors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'пн-пт 8:00 - 21:00; '
                    'сб 9:00 - 18:00',
                    style: TextStyle(fontSize: 14, color: colors.textSecondary),
                  ),
                ],
              ),
            ),
            // Правая часть: иконка геолокации
            Icon(
              Icons.location_on_outlined,
              color: AppColors.secondary,
              size: 28,
            ),
          ],
        ),
      ],
    );
  }
}
