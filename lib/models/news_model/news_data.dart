import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:naryn_market/models/news_model/news.dart';

class Newsdata extends ChangeNotifier {
  List<News> _newsList = [
    News(
        id: 99,
        isFavorite: true,
        imgUrl: 'assets/icons/car.jpeg',
        description:
            'Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '08/11/2024',
        category: 'Скутер, велосипед, коляска'),
    News(
        id: 2,
        imgUrl: 'assets/icons/car.jpeg',
        description: 'Redmi Not 11 сатылат срочно!',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '07/11/2024',
        category: 'Телефондор (Электроника)'),
    News(
        id: 3,
        imgUrl: 'assets/icons/car.jpeg',
        description: 'Чон уй букасы менен сатылат',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '10/10/2024',
        category: 'Мал чарба'),
  ];

  List<News> favList = [
    News(
        id: 99,
        isFavorite: true,
        imgUrl: 'assets/icons/car.jpeg',
        description:
            'Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '08/11/2024',
        category: 'Скутер, велосипед, коляска'),
    News(
        id: 2,
        imgUrl: 'assets/icons/car.jpeg',
        description: 'Redmi Not 11 сатылат срочно!',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '07/11/2024',
        category: 'Телефондор (Электроника)'),
    News(
        id: 3,
        imgUrl: 'assets/icons/car.jpeg',
        description: 'Чон уй букасы менен сатылат',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '10/10/2024',
        category: 'Мал чарба'),
  ];

  UnmodifiableListView<News> get newsList {
    return UnmodifiableListView(_newsList);
  }

  void updateNews(News news) {
    news.toggleFavorite();
    notifyListeners();
  }
}
