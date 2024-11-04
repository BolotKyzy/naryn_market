class NewsListClass {
  final String newsImage;
  final String newsText;
  final bool isFav;
  final double price;

  NewsListClass(
      {required this.newsImage,
      required this.newsText,
      required this.isFav,
      required this.price});
}

List<NewsListClass> newsList = [
  NewsListClass(
      isFav: false,
      newsImage: 'assets/icons/car.jpeg',
      newsText:
          'Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black',
      price: 154000),
  NewsListClass(
      isFav: true,
      newsImage: 'assets/icons/car.jpeg',
      newsText:
          'Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black',
      price: 154000),
  NewsListClass(
      isFav: true,
      newsImage: 'assets/icons/car.jpeg',
      newsText:
          'Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black',
      price: 345),
  NewsListClass(
      isFav: false,
      newsImage: 'assets/icons/car.jpeg',
      newsText:
          'Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black',
      price: 123),
  NewsListClass(
      isFav: false,
      newsImage: 'assets/icons/car.jpeg',
      newsText:
          'Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black',
      price: 154000),
  NewsListClass(
      isFav: true,
      newsImage: 'assets/icons/car.jpeg',
      newsText:
          'Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black',
      price: 154000),
];
