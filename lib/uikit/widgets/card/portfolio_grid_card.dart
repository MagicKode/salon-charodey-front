import 'package:flutter/material.dart';
import '../../../feature/core/homepagescreen/sections/portfolio/domain/portfolio_item.dart';
import '../../../uikit/colors/app_colors.dart';

class PortfolioGridCard extends StatelessWidget {
  final PortfolioItem item;

  const PortfolioGridCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return GestureDetector(
      onTap: () {
        _showFullScreenImage(context, item);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.primary.withOpacity(0.3),
            width: 2,
          ),
          image: DecorationImage(
            image: AssetImage(item.imageAsset),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Затемнение снизу для читаемости текста
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                    stops: const [0.0, 0.6],
                  ),
                ),
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFullScreenImage(BuildContext context, PortfolioItem item) {
    showDialog(
      context: context,
      builder: (context) => GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Dialog(
          backgroundColor: Colors.transparent,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(item.imageAsset),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: AppColors.accentGold, width: 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
