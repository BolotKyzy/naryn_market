import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/constants/text_styles/text_styles.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:naryn_market/news_page/widgets/image_list_class.dart';
import 'package:provider/provider.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context)?.settings.arguments as int;
    final selectedNew = Provider.of<Newsdata>(context, listen: false)
        .newsList
        .firstWhere((element) => element.id == index);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedNew.category),
        backgroundColor: AppColors.blue20,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 200, child: ImageSliderScreen()),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedNew.date,
                    style: TextStyle(
                        fontSize: 12, color: AppColors.blackGreyColor),
                  ),
                  Text(
                    selectedNew.category,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Text(
              "Price ${selectedNew.price} ",
              style: TextStyles.price,
            ),
            const SizedBox(height: 30),
            Text(
              selectedNew.description,
              style: TextStyles.description,
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: Row(children: [
                const Icon(Icons.call),
                const SizedBox(width: 20),
                Text(
                  selectedNew.phoneNumber,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ]),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  const Icon(FontAwesomeIcons.whatsapp, color: AppColors.green),
                  const SizedBox(width: 20),
                  Text(
                    selectedNew.whatsAppNumber,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
