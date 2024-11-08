import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(child: Consumer<Newsdata>(builder: (context, news, child) {
        return Wrap(
          spacing: 15.0, // gap between adjacent chips
          runSpacing: 15.0, // gap between lines
          children: news.newsList.map((newsItem) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, "newsDetailPage");
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: 190,
                height: 250,
                clipBehavior: Clip.hardEdge, //default is none

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: AppColors.lightGrey)),
                child: Column(children: [
                  Image.asset(newsItem.imgUrl),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      maxLines: 3,
                      newsItem.description,
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
                        "${newsItem.price} сом",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff13161B),
                            fontSize: 16,
                            fontFamily: 'NotoSans'),
                      ),
                      InkWell(
                        onTap: () {
                          news.updateNews(newsItem);
                        },
                        child: Icon(
                          newsItem.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            );
          }).toList(),
        );
      })),
    );
  }
}
