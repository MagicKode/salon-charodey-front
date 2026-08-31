import 'package:flutter/material.dart';

import '../../../../../uikit/colors/app_colors.dart';
import '../../../../../uikit/widgets/card/portfolio_card.dart';
import '../../../gallery/gallery_screen.dart';
import 'domain/portfolio_item.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  final List<PortfolioItem> _items = const [
    PortfolioItem(
      id: '1',
      imageAsset: 'assets/portfolio/work1.jpg',
      title: 'Классика',
    ),
    PortfolioItem(
      id: '2',
      imageAsset: 'assets/portfolio/work2.jpg',
      title: 'Борода',
    ),
    PortfolioItem(
      id: '3',
      imageAsset: 'assets/portfolio/work3.jpg',
      title: 'Фейд',
    ),
    PortfolioItem(
      id: '4',
      imageAsset: 'assets/portfolio/work4.jpg',
      title: 'Усы',
    ),
    PortfolioItem(
      id: '5',
      imageAsset: 'assets/portfolio/work5.jpg',
      title: 'Стрижка',
    ),
    PortfolioItem(
      id: '6',
      imageAsset: 'assets/portfolio/work6.jpg',
      title: 'Бритьё',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    final Color linkColor = isDark ? AppColors.accentGold : AppColors.primary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Наши работы',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: colors.textPrimary,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const GalleryScreen(),
                  ),
                );
              },
              child: Text(
                'Смотреть все',
                style: TextStyle(
                  fontSize: 14,
                  color: linkColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // Слайдер в 2 строки
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return PortfolioCard(item: _items[index]);
            },
          ),
        ),
      ],
    );
  }
}
