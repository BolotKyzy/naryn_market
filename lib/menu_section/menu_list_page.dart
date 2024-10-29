import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Navigator.pop(context);
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              child: const Row(
                children: [
                  Icon(Icons.newspaper_outlined),
                  SizedBox(width: 20),
                  Text("Баардык жарнамалар"),
                  Expanded(child: SizedBox()),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onTap: () {},
            ),
            InkWell(
              child: const Row(
                children: [
                  Icon(Icons.newspaper_outlined),
                  SizedBox(width: 20),
                  Text("Баардык жарнамалар"),
                  Expanded(child: SizedBox()),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onTap: () {},
            ),
            InkWell(
              child: const Row(
                children: [
                  Icon(Icons.newspaper_outlined),
                  SizedBox(width: 20),
                  Text("Баардык жарнамалар"),
                  Expanded(child: SizedBox()),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onTap: () {},
            ),
            InkWell(
              child: const Row(
                children: [
                  Icon(Icons.newspaper_outlined),
                  SizedBox(width: 20),
                  Text("Баардык жарнамалар"),
                  Expanded(child: SizedBox()),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onTap: () {},
            ),
            InkWell(
              child: const Row(
                children: [
                  Icon(Icons.newspaper_outlined),
                  SizedBox(width: 20),
                  Text("Баардык жарнамалар"),
                  Expanded(child: SizedBox()),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onTap: () {},
            ),
            InkWell(
              child: const Row(
                children: [
                  Icon(Icons.newspaper_outlined),
                  SizedBox(width: 20),
                  Text("Баардык жарнамалар"),
                  Expanded(child: SizedBox()),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onTap: () {},
            ),
            InkWell(
              child: const Row(
                children: [
                  Icon(Icons.newspaper_outlined),
                  SizedBox(width: 20),
                  Text("Баардык жарнамалар"),
                  Expanded(child: SizedBox()),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
