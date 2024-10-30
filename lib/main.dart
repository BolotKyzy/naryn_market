import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/main_page.dart';
import 'package:naryn_market/menu_section/menu_list_page.dart';
import 'package:naryn_market/news_page/news.dart';

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
        iconTheme: IconThemeData(color: AppColors.darkBlue, size: 30),
        textTheme: TextTheme(
            bodyMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'NotoSans',
                color: AppColors.blue)),
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
