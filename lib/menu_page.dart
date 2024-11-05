import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';

const categoriesList = [
  {
    "title": "Нарын кабарлар",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Автоунаа жана тетиктер",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Кыймылсыз мулк",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Телефондор (Электроника)",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Уй тиричилик техниакалар",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Эмеректер",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Скутер, велосипед, коляска",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Курулуш материалдар",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Тамак аш",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Жумуш",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Кызмат корсотуу",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Кафе, Ашкана, магазин",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Дыйкан чарба",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Мал чарба",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Канаттуулар",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Отун, комур",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Оюнчуктар, ",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Жоголду, табылды",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
  {
    "title": "Спорт буюмрары",
    "icon":
        "https://st-0.akipress.org/127/.storage/limon/images/2014leto/c430e644c9043043e2b0fc5d1200436c.jpg"
  },
];

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: List.generate(
                  categoriesList.length,
                  (index) => FractionallySizedBox(
                        widthFactor: 0.3,
                        child: Card(
                            color: AppColors.grey,
                            child: SizedBox(
                              height: 70.0,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(5.0),
                                onTap: () {},
                                child: Center(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.abc_sharp,
                                          size: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, right: 5.0),
                                          child: Text(
                                              categoriesList[index]["title"]!,
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .copyWith(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                        ),
                                      ]),
                                ),
                              ),
                            )),
                      )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
