import 'package:flutter/material.dart';
import '../../../../../uikit/colors/app_colors.dart';

class LocationBody extends StatelessWidget {
  const LocationBody({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Row(
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
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: colors.textPrimary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'пн-пт 8:00 - 21:00; '
                'сб 9:00 - 18:00',
                style: TextStyle(
                  fontSize: 14,
                  color: colors.textSecondary,
                ),
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
    );
  }
}
