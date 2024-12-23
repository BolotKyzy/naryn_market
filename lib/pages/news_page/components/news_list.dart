import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/constants/text_styles/text_styles.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Center(child: Consumer<Newsdata>(builder: (context, news, child) {
        return Column(children: [
          TextFormField(
            onChanged: (val) {
              news.filterNews(val);
            },
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              filled: true, // Enables filling
              fillColor: Colors.white, // Sets the background color

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide:
                    BorderSide(color: AppColors.darkBlue.withOpacity(0.2)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide:
                    BorderSide(color: AppColors.darkBlue.withOpacity(0.2)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide:
                    BorderSide(color: AppColors.darkBlue.withOpacity(0.2)),
              ),
              prefixIcon: Container(
                margin: const EdgeInsets.only(
                    left: 15, bottom: 10, right: 15, top: 10),
                child: Icon(
                  Icons.search,
                  color: AppColors.darkBlue,
                  size: 30,
                ),
                // child: SvgPicture.asset(
                //   'assets/icons/search_icon.svg',
                // ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 15.0, // gap between adjacent chips
            runSpacing: 15.0, // gap between lines
            children: news.filteredList.map((newsItem) {
              return InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.pushNamed(context, "newsDetailPage",
                      arguments: newsItem.id);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 270,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: AppColors.darkBlue.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.darkBlue.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 2))
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Image.asset(newsItem.imgUrl),
                          height: 110,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          maxLines: 4,
                          newsItem.description,
                          style: TextStyles.description,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "${newsItem.price} сом",
                              style: TextStyles.price,
                            ),
                            InkWell(
                              onTap: () {
                                news.addToFavList(newsItem);
                              },
                              child: Icon(
                                Icons.favorite,
                                size: 25,
                                color: newsItem.isFavorite
                                    ? Colors.red.withOpacity(0.8)
                                    : AppColors.lightGrey.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ]),
                ),
              );
            }).toList(),
          ),
        ]);
      })),
    );
  }
}
