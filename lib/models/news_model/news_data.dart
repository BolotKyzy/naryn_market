import 'package:flutter/material.dart';
import 'package:naryn_market/models/news_model/news.dart';

class Newsdata extends ChangeNotifier {
  List<News> newsList = [
    News(
        isFavorite: true,
        imgUrl: 'assets/icons/car.jpeg',
        description:
            'Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '30/10/2024',
        category: 'Скутер, велосипед, коляска'),
  ];
}
