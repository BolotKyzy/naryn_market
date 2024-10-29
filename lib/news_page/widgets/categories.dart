import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(30),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Маркет"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/icons/market.png',
                  width: 40,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: const BoxDecoration(color: Colors.amber),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Кабарлар"),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/icons/news.png',
                  width: 40,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: const BoxDecoration(color: Colors.amber),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: const BoxDecoration(color: Colors.amber),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: const BoxDecoration(color: Colors.amber),
          ),
        ),
      ]),
    );
  }
}
