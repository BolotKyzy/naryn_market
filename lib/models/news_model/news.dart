class News {
  final int id;
  final String description;
  final double price;
  bool isFavorite;
  final String imgUrl;
  final String phoneNumber;
  final String whatsAppNumber;
  final String date;
  final String category;

  News({
    required this.id,
    required this.description,
    required this.price,
    this.isFavorite = false,
    required this.imgUrl,
    required this.phoneNumber,
    required this.whatsAppNumber,
    required this.date,
    required this.category,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}
