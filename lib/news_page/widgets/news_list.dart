import 'package:flutter/material.dart';
import 'package:naryn_market/classes/news_list_class.dart';
import 'package:naryn_market/constants/colors.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: Wrap(
          spacing: 15.0, // gap between adjacent chips
          runSpacing: 15.0, // gap between lines
          children: newsList.map((newsItem) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, "newsDetailPage");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: 190,
                height: 250,
                clipBehavior: Clip.hardEdge, //default is none

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: AppColors.lightGrey)),
                child: Column(children: [
                  Image.asset(newsItem.newsImage),
                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                      maxLines: 3,
                      newsItem.newsText,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff13161B),
                          fontSize: 14,
                          fontFamily: 'NotoSans')),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${newsItem.price}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff13161B),
                            fontSize: 16,
                            fontFamily: 'NotoSans'),
                      ),
                      Icon(
                        newsItem.isFav
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: Colors.red,
                      )
                    ],
                  ),
                  // Image.network(src)
                ]),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
