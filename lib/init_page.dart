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
      backgroundColor: Colors.white,
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
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper,
              size: 40,
            ),
            label: 'Жарнамалар',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 40,
            ),
            label: 'Жарнама беруу',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.widgets,
              size: 40,
            ),
            label: 'Болумдор',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedIconTheme: IconThemeData(color: AppColors.darkBlue),
        unselectedIconTheme: IconThemeData(color: AppColors.lightGrey),
        selectedItemColor: AppColors.darkBlue,
        unselectedItemColor: AppColors.darkGrey,
        unselectedLabelStyle: const TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.lightBlack),
        selectedLabelStyle: const TextStyle(
            fontFamily: 'NotoSans', fontSize: 16, fontWeight: FontWeight.w400),
        onTap: _onItemTapped,
      ),
    );
  }
}
