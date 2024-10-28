import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
      body: Container(
        child: Column(
          children: [Text("You need to do app bar and navigation bar")],
        ),
      ),
    );
  }
}
