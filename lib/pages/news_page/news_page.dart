import 'package:flutter/material.dart';
import 'package:naryn_market/pages/news_page/widgets/news_list.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          NewsList()
        ],
      ),
    );
  }
}
