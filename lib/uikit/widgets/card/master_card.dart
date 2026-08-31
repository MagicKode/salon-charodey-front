import 'package:flutter/material.dart';
import '../../../feature/core/homepagescreen/sections/masters/domain/master_entity.dart';
import '../../../uikit/colors/app_colors.dart';

class MasterCard extends StatelessWidget {
  final MasterEntity master;

  const MasterCard({super.key, required this.master});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark ? colors.background : AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.3),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          // Фото (заглушка)
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.secondary.withOpacity(0.3),
            ),
            child: const Icon(
              Icons.person_outline,
              color: Colors.grey,
              size: 30,
            ),
          ),
          const SizedBox(width: 12),
          // Информация
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  master.name,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: colors.textPrimary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  master.experience,
                  style: TextStyle(
                    fontSize: 12,
                    color: colors.textSecondary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  master.specialization,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.accentGold,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
