class DiscountEntity {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  const DiscountEntity({
    required this.id,
    required this.title,
    required this.description,
    this.imageUrl = '',
  });
}