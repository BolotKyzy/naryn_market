import 'package:flutter/material.dart';

class NewsInsertPage extends StatelessWidget {
  const NewsInsertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Суроттор"),
        Text("Жарыяныздын суроту болсо. томонго жуктонуз"),
        Row(
          children: [
            Expanded(
                child: Container(
              height: 50,
              width: 50,
              child: Icon(Icons.add),
            )),
            Column(
              children: [
                Expanded(
                    child: Container(
                  height: 50,
                  width: 30,
                  child: Icon(Icons.add),
                )),
                Expanded(
                    child: Container(
                  height: 50,
                  width: 30,
                  child: Icon(Icons.add),
                )),
              ],
            )
          ],
        )
      ],
    );
  }
}
