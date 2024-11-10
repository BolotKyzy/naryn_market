import 'package:flutter/material.dart';
import 'package:naryn_market/constants/themes/app_theme.dart';
import 'package:naryn_market/init_page.dart';
import 'package:naryn_market/pages/top_sections/top_sections.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:naryn_market/pages/news_detail_page/news_detail_page.dart';
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
        '/': (context) => const InitPage(),
        'menuList': (context) => const TopSectionsPage(),
        'newsDetailPage': (context) => ChangeNotifierProvider<Newsdata>(
              create: (_) => Newsdata(),
              child: const NewsDetailPage(),
            ),
      },
    );
  }
}
