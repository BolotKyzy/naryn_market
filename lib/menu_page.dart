import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/constants/text_styles/text_styles.dart';

List<Map> categoriesList = [
  {"title": "Нарын кабарлар", "icon": Icons.campaign},
  {"title": "Автоунаа жана тетиктер", "icon": Icons.car_rental},
  {"title": "Кыймылсыз мулк", "icon": Icons.pets},
  {"title": "Телефондор (Электроника)", "icon": Icons.devices_other},
  {"title": "Уй тиричилик техникалар", "icon": Icons.bathtub},
  {"title": "Эмеректер", "icon": Icons.chair},
  {"title": "Скутер, велосипед, коляска", "icon": Icons.electric_bike},
  {"title": "Курулуш материалдар", "icon": Icons.maps_home_work},
  {"title": "Тамак аш", "icon": Icons.flatware},
  {"title": "Жумуш", "icon": Icons.engineering},
  {"title": "Кызмат корсотуу", "icon": Icons.construction},
  {"title": "Кафе, Ашкана, магазин", "icon": Icons.table_bar},
  {"title": "Дыйкан чарба", "icon": Icons.agriculture},
  {"title": "Мал чарба", "icon": Icons.cabin},
  {"title": "Кийим-кече", "icon": Icons.checkroom},
  {"title": "Отун, комур", "icon": Icons.cabin},
  {"title": "Оюнчуктар, ", "icon": Icons.toys},
  {"title": "Жоголду, табылды", "icon": Icons.zoom_out},
  {"title": "Спорт буюмрары", "icon": Icons.sports_soccer},
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
                                          categoriesList[index]["icon"],
                                          size: 30,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, right: 5.0),
                                          child: Text(
                                              categoriesList[index]["title"],
                                              textAlign: TextAlign.center,
                                              style: TextStyles.menu),
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
