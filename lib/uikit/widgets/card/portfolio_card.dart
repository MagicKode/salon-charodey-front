import 'package:flutter/material.dart';
import '../../../feature/core/homepagescreen/sections/portfolio/domain/portfolio_item.dart';
import '../../../uikit/colors/app_colors.dart';

class PortfolioCard extends StatelessWidget {
  final PortfolioItem item;

  const PortfolioCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showFullScreenImage(context, item);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary.withOpacity(0.05),
                border: Border.all(
                  color: AppColors.primary,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Center(
                child: Icon(
                  Icons.photo_camera_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(height: 6),
            SizedBox(
              width: 80,
              child: Text(
                item.title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFullScreenImage(BuildContext context, PortfolioItem item) {
    // Если картинки нет – показываем заглушку
    showDialog(
      context: context,
      builder: (context) => GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.primary.withOpacity(0.2),
              border: Border.all(color: AppColors.accentGold, width: 2),
            ),
            child: const Center(
              child: Icon(
                Icons.photo_camera_outlined,
                color: Colors.grey,
                size: 60,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
