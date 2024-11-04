import 'package:flutter/material.dart';
import 'package:naryn_market/constants/themes/app_theme.dart';
import 'package:naryn_market/main_page.dart';
import 'package:naryn_market/menu_page.dart';
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
      theme: customLightTheme,
      // darkTheme: customDarkTheme,
      // themeMode: ThemeMode.system,
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(iconTheme: IconThemeData(size: 40)),
      //   iconTheme: const IconThemeData(color: AppColors.darkBlue, size: 30),
      //   useMaterial3: true,
      // ),
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
