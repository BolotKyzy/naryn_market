import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:naryn_market/models/news_model/news.dart';

class Newsdata extends ChangeNotifier {
  List<News> _newsList = [
    News(
        id: 99,
        isFavorite: true,
        imgUrl: 'assets/icons/car.jpeg',
        description: 'Машина сатылат, абалы жакшы, суйлошуу жолу бар',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '08/11/2024',
        category: 'Скутер, велосипед, коляска'),
    News(
        isFavorite: true,
        id: 2,
        imgUrl: 'assets/icons/redmi.jpg',
        description: 'Redmi Not 11 сатылат срочно!',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '07/11/2024',
        category: 'Телефондор (Электроника)'),
    News(
        isFavorite: true,
        id: 3,
        imgUrl: 'assets/icons/cow.jpg',
        description: 'Чон уй букасы менен сатылат',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '10/10/2024',
        category: 'Мал чарба'),
    News(
        isFavorite: true,
        id: 3,
        imgUrl: 'assets/icons/iphone.jpg',
        description: 'Iphone сатылат',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '10/10/2024',
        category: 'Телефондор (Электроника)'),
    News(
        isFavorite: true,
        id: 3,
        imgUrl: 'assets/icons/images.jpeg',
        description: 'уй сатылат',
        price: 154000,
        phoneNumber: '+996990551897',
        whatsAppNumber: '+996990551897',
        date: '10/10/2024',
        category: 'Телефондор (Электроника)'),
  ];
  List<News> filteredList = [];
  Newsdata() {
    filteredList = _newsList;
  }

  UnmodifiableListView<News> get newsList {
    return UnmodifiableListView(_newsList);
  }

  void addToFavList(News news) {
    news.toggleFavorite();
    notifyListeners();
  }

  void filterNews(String text) {
    print(text == '');
    String query = text;
    if (query.isNotEmpty) {
      filteredList = _newsList.where((News newItem) {
        return newItem.description.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filteredList = newsList;
      print(_newsList);
    }
    notifyListeners();
  }
}
