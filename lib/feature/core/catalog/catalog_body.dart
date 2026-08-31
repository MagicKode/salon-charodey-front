import 'package:flutter/material.dart';
import '../../../uikit/widgets/card/service_card.dart';
import 'domain/service_entity.dart';

class CatalogBody extends StatelessWidget {
  CatalogBody({super.key});

  // Заглушки – данные услуг
  final List<ServiceEntity> _services = const [
    ServiceEntity(
      id: '1',
      name: 'Мужская стрижка',
      price: '30 BYN',
      duration: '30 мин',
    ),
    ServiceEntity(
      id: '2',
      name: 'Оформление бороды',
      price: '25 BYN',
      duration: '20 мин',
    ),
    ServiceEntity(
      id: '3',
      name: 'Маникюр мужской',
      price: '35 BYN',
      duration: '40 мин',
    ),
    ServiceEntity(
      id: '4',
      name: 'Педикюр мужской',
      price: '45 BYN',
      duration: '50 мин',
    ),
    ServiceEntity(
      id: '5',
      name: 'Стрижка + борода',
      price: '50 BYN',
      duration: '60 мин',
    ),
    ServiceEntity(
      id: '6',
      name: 'Окрашивание волос',
      price: '60 BYN',
      duration: '90 мин',
    ),
    ServiceEntity(
      id: '7',
      name: 'Уход за волосами',
      price: '20 BYN',
      duration: '15 мин',
    ),
    ServiceEntity(
      id: '8',
      name: 'Бритьё головы',
      price: '15 BYN',
      duration: '10 мин',
    ),
    ServiceEntity(
      id: '9',
      name: 'Стрижка + борода',
      price: '50 BYN',
      duration: '60 мин',
    ),
    ServiceEntity(
      id: '10',
      name: 'Окрашивание волос',
      price: '60 BYN',
      duration: '90 мин',
    ),
    ServiceEntity(
      id: '11',
      name: 'Уход за волосами',
      price: '20 BYN',
      duration: '15 мин',
    ),
    ServiceEntity(
      id: '12',
      name: 'Бритьё головы',
      price: '15 BYN',
      duration: '10 мин',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.0, // квадратная карточка
        ),
        itemCount: _services.length,
        itemBuilder: (context, index) {
          return ServiceCard(service: _services[index]);
        },
      ),
    );
  }
}
