import 'package:flutter/material.dart';

class AppConstants {
  static List<Map<String, dynamic>> getDefaultMenuItems() {
    return [
      {
        'title': "Тандалгандар",
        'icon': Icon(Icons.turned_in_not),
        'action': (BuildContext context) {
          Navigator.pushNamed(context, 'favorites');
        },
      },
      {
        'title': "Менин жарнамаларым",
        'icon': Icon(Icons.add_card),
        'action': (BuildContext context) {
          // Navigator.pushNamed(context, 'my_news');
        },
      },
      {
        'title': "Конгуроo",
        'icon': Icon(Icons.edit_notifications_outlined),
        'action': (BuildContext context) {
          // Navigator.pushNamed(context, 'notification');
        },
      },
      {
        'title': "Тиркемени болушуу",
        'icon': Icon(Icons.share),
        'action': (BuildContext context) {
          // Navigator.pushNamed(context, 'share');
        },
      },
      {
        'title': "Тиркемени жаныртуу",
        'icon': Icon(Icons.download_outlined),
        'action': (BuildContext context) {
          // Navigator.pushNamed(context, 'share');
        },
      },
    ];
  }
}
