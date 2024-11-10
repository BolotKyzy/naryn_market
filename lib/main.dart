import 'package:flutter/material.dart';
import 'package:naryn_market/constants/themes/app_theme.dart';
import 'package:naryn_market/main_page.dart';
import 'package:naryn_market/menu_section/menu_list_page.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:naryn_market/news_page/news.dart';
import 'package:naryn_market/news_page/news_detail_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: customLightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        'newsPage': (context) => const NewsPage(),
        'menuList': (context) => const MenuList(),
        'newsDetailPage': (context) => ChangeNotifierProvider<Newsdata>(
              create: (_) => Newsdata(),
              child: NewsDetailPage(),
            ),
      },
    );
  }
}
