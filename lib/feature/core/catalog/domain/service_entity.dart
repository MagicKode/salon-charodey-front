class ServiceEntity {
  final String id;
  final String name;
  final String price;
  final String duration; // например, "30 мин"
  final String imageUrl; // пока заглушка

  const ServiceEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.duration,
    this.imageUrl = '',
  });
}
