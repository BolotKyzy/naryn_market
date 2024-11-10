import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/constants/text_styles/text_styles.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:naryn_market/pages/news_detail_page/components/news_image_view.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  selectedNew.date,
                  style: TextStyles.newsDetailDate,
                ),
              ),
              NewsImageView(),
              const SizedBox(
                height: 15,
              ),
              Text(
                selectedNew.description,
                style: TextStyles.newsDetailDesc,
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    const Text(
                      'Баасы: ',
                      style: TextStyle(fontSize: 18, fontFamily: "NotoSans"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.blue),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                              text: " ${selectedNew.price}",
                              style: TextStyles.newsDetailPrice,
                              children: const [
                                TextSpan(
                                    text: ' сом',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "NotoSans",
                                        fontWeight: FontWeight.normal))
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  Expanded(child: Container()),
                  const Icon(Icons.call),
                  const SizedBox(width: 20),
                  Text(selectedNew.phoneNumber, style: TextStyles.phone)
                ]),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    const Icon(FontAwesomeIcons.whatsapp,
                        color: AppColors.green),
                    const SizedBox(width: 20),
                    Text(selectedNew.whatsAppNumber, style: TextStyles.phone)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
