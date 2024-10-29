import 'package:flutter/material.dart';
import 'package:naryn_market/main_page.dart';
import 'package:naryn_market/menu_section/menu_list_page.dart';
import 'package:naryn_market/news_page/news.dart';
import 'package:naryn_market/news_page/widgets/categories.dart';

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
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        'newsPage': (context) => const NewsPage(),
        'menuList': (context) => const MenuList()
      },
    );
  }
}
