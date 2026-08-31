class PortfolioItem {
  final String id;
  final String imageAsset; // путь к картинке
  final String title;      // например, "Классическая стрижка"

  const PortfolioItem({
    required this.id,
    required this.imageAsset,
    required this.title,
  });
}
