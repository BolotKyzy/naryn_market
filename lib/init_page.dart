import 'package:flutter/material.dart';
import 'package:naryn_market/constants/app_bar.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/pages/categories_page/categories_page.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:naryn_market/pages/news_page/news_page.dart';
import 'package:naryn_market/pages/news_insert_page/news_insert_page.dart';
import 'package:provider/provider.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: IndexedStack(index: _selectedIndex, children: [
        ChangeNotifierProvider<Newsdata>(
          create: (_) => Newsdata(),
          child: NewsPage(),
        ),
        NewsInsertPage(),
        CategoriesPage()
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              color: AppColors.blue,
              Icons.newspaper,
              size: 40,
            ),
            label: 'Жарнамалар',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 40,
              color: Colors.red,
            ),
            label: 'Жарнама беруу',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.widgets,
              size: 40,
              color: AppColors.blue,
            ),
            label: 'Меню',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.orange,
        unselectedLabelStyle: TextStyle(fontFamily: 'NotoSans'),
        selectedLabelStyle: TextStyle(fontFamily: 'NotoSans'),
        onTap: _onItemTapped,
      ),
    );
  }
}
