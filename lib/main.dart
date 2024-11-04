import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/main_page.dart';
import 'package:naryn_market/menu_section/menu_list_page.dart';
import 'package:naryn_market/news_page/news.dart';
import 'package:naryn_market/news_page/news_detail_page.dart';

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
        appBarTheme: const AppBarTheme(iconTheme: IconThemeData(size: 40)),
        iconTheme: const IconThemeData(color: AppColors.darkBlue, size: 30),
        textTheme: const TextTheme(
            bodySmall: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 14,
                fontFamily: 'NotoSans',
                color: AppColors.blackGreyColor),
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
        'menuList': (context) => const MenuList(),
        'newsDetailPage': (context) => const NewsDetailPage(),
      },
    );
  }
}
