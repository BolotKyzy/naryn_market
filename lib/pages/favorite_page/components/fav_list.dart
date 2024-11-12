import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/constants/text_styles/text_styles.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:provider/provider.dart';

class FavList extends StatelessWidget {
  const FavList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(child: Consumer<Newsdata>(builder: (context, news, child) {
        final List favList =
            news.newsList.where((element) => element.isFavorite).toList();

        return Wrap(
          spacing: 15.0, // gap between adjacent chips
          runSpacing: 15.0, // gap between lines
          children: favList.map((favItem) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, "newsDetailPage",
                    arguments: favItem.id);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: MediaQuery.of(context).size.width / 2.25,
                height: 250,
                clipBehavior: Clip.hardEdge, //default is none

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: AppColors.lightGrey)),
                child: Column(children: [
                  Image.asset(favItem.imgUrl),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    favItem.description,
                    maxLines: 3,
                    style: TextStyles.description,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${favItem.price} сом",
                        style: TextStyles.price,
                      ),
                      InkWell(
                        onTap: () {
                          news.addToFavList(favItem);
                        },
                        child: Icon(
                          favItem.isFavorite
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
