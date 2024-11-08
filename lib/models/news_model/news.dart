// ignore_for_file: public_member_api_docs, sort_constructors_first
class News {
  final String description;
  final double price;
  bool isFavorite;
  final String imgUrl;
  final String phoneNumber;
  final String whatsAppNumber;
  final String date;
  final String category;

  News({
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
