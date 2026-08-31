import 'package:flutter/material.dart';
import '../../../../../uikit/colors/app_colors.dart';
import '../../../../../uikit/widgets/card/discount_card.dart';
import 'domain/discount_entity.dart';

class DiscountBody extends StatelessWidget {
  DiscountBody({super.key});

  final List<DiscountEntity> _discounts = const [
    DiscountEntity(
      id: '1',
      title: 'Стрижка + борода',
      description: 'Скидка 20% на комплекс',
    ),
    DiscountEntity(
      id: '2',
      title: 'Первое посещение',
      description: 'Кофе в подарок каждому новому гостю',
    ),
    DiscountEntity(
      id: '3',
      title: 'Семейный день',
      description: 'Скидка 15% для двоих',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Акции',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: colors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _discounts.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: DiscountCard(
                  discount: _discounts[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
