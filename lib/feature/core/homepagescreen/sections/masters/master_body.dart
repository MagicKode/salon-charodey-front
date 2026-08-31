import 'package:flutter/material.dart';
import '../../../../../uikit/colors/app_colors.dart';
import '../../../../../uikit/widgets/card/master_card.dart';
import 'domain/master_entity.dart';

class MastersBody extends StatelessWidget {
  MastersBody({super.key});

  final List<MasterEntity> _masters = const [
    MasterEntity(
      id: '1',
      name: 'Алексей Иванов',
      experience: 'Опыт 8 лет',
      specialization: 'Барбер, колорист',
    ),
    MasterEntity(
      id: '2',
      name: 'Дмитрий Петров',
      experience: 'Опыт 5 лет',
      specialization: 'Стилист-универсал',
    ),
    MasterEntity(
      id: '3',
      name: 'Сергей Смирнов',
      experience: 'Опыт 3 года',
      specialization: 'Борода, усы',
    ),
    MasterEntity(
      id: '4',
      name: 'Михаил Соколов',
      experience: 'Опыт 10 лет',
      specialization: 'Классическая стрижка',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Наши мастера',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: colors.textPrimary,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _masters.length,
            itemBuilder: (context, index) {
              return MasterCard(master: _masters[index]);
            },
          ),
        ),
      ],
    );
  }
}
