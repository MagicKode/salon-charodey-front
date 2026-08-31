class MasterEntity {
  final String id;
  final String name;
  final String experience; // например, "Опыт 5 лет"
  final String specialization; // например, "Барбер, колорист"
  final String imageUrl; // пока заглушка

  const MasterEntity({
    required this.id,
    required this.name,
    required this.experience,
    required this.specialization,
    this.imageUrl = '',
  });
}
