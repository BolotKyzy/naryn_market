import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Нарын Базар"),
            Text("You need to do app bar and navigation bar")
          ],
        ),
      ),
    );
  }
}
