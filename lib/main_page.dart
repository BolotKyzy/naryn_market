import 'package:flutter/material.dart';
import 'package:naryn_market/menu_page.dart';
import 'package:naryn_market/news.dart';
import 'package:naryn_market/news_insert_page.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 35,
          color: const Color.fromARGB(255, 136, 21, 139),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sort),
            iconSize: 35,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 35,
          )
        ],
        title: Text("Нарын Базар"),
        centerTitle: true,
      ),
      body: IndexedStack(
          index: _selectedIndex,
          children: const [News_Page(), NewsInsertPage(), MenuPage()]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
              color: Colors.red,
            ),
            label: 'Жарнама беруу',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.widgets,
              size: 40,
              color: Colors.blue,
            ),
            label: 'Меню',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
