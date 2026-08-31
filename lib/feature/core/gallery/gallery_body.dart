import 'package:flutter/material.dart';

import '../../../uikit/widgets/card/gallery_card.dart';
import '../homepagescreen/sections/portfolio/domain/portfolio_item.dart';

class GalleryBody extends StatelessWidget {
  const GalleryBody({super.key});

  final List<PortfolioItem> _items = const [
    PortfolioItem(
      id: '1',
      imageAsset: 'assets/portfolio/work1.jpg',
      title: 'Классическая стрижка',
    ),
    PortfolioItem(
      id: '2',
      imageAsset: 'assets/portfolio/work2.jpg',
      title: 'Оформление бороды',
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
      title: 'Мужская стрижка',
    ),
    PortfolioItem(
      id: '6',
      imageAsset: 'assets/portfolio/work6.jpg',
      title: 'Бритьё головы',
    ),
    PortfolioItem(
      id: '7',
      imageAsset: 'assets/portfolio/work7.jpg',
      title: 'Колорирование',
    ),
    PortfolioItem(
      id: '8',
      imageAsset: 'assets/portfolio/work8.jpg',
      title: 'Текстурирование',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.0,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return GalleryCard(item: _items[index]);
        },
      ),
    );
  }
}
