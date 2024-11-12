import 'package:flutter/material.dart';
import 'package:naryn_market/pages/favorite_page/components/fav_list.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Navigator.pop(context);
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            FavList()
          ],
        ),
      ),
    );
  }
}
