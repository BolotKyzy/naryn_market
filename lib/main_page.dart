import 'package:flutter/material.dart';
import 'package:naryn_market/constants/app_bar.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/menu_page.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:naryn_market/news_page/news.dart';
import 'package:naryn_market/news_insert_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
        MenuPage()
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
