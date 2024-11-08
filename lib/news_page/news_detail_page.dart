import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/news_page/widgets/image_list_class.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final int id = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Скутер, велосипед, коляска"),
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
                    "$id",
                    style: TextStyle(
                        fontSize: 12, color: AppColors.blackGreyColor),
                  ),
                  Text(
                    "Скутер, велосипед, коляска",
                    style: TextStyle(
                        fontSize: 12, color: AppColors.blackGreyColor),
                  ),
                ],
              ),
            ),
            const Text("Price 130000 "),
            const SizedBox(height: 30),
            const Text("Сатылат жаны масло алганыма 1 жума боло элек",
                style: TextStyle(color: AppColors.blackGreyColor)),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: const Row(children: [
                Icon(Icons.call),
                SizedBox(width: 20),
                Text("0551110694")
              ]),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: const Row(
                children: [
                  Icon(FontAwesomeIcons.whatsapp, color: AppColors.green),
                  SizedBox(width: 20),
                  Text("0551110694")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
