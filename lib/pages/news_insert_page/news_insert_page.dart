import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/pages/categories_page/categories_page.dart';
import 'package:naryn_market/constants/text_styles/text_styles.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NewsInsertPage extends StatefulWidget {
  NewsInsertPage({super.key});

  @override
  State<NewsInsertPage> createState() => _NewsInsertPageState();
}

class _NewsInsertPageState extends State<NewsInsertPage> {
  String inputTxt = "";

  String? selectedCategory;

  List<String> categoryTitles =
      categoriesList.map((category) => category["title"] as String).toList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Суроттор", style: TextStyles.description),
            Text("Жарыяныздын суроту болсо, томонго жуктонуз"),
            StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Container(
                    child: Icon(Icons.add),
                    color: AppColors.cartGreyColor,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    child: Icon(Icons.add),
                    color: AppColors.cartGreyColor,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    child: Icon(Icons.add),
                    color: AppColors.cartGreyColor,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    child: Icon(Icons.add),
                    color: AppColors.cartGreyColor,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    child: Icon(Icons.add),
                    color: AppColors.cartGreyColor,
                  ),
                ),
              ], // End off grid
            ),
            Text(
              "Муноздомо",
              style: TextStyles.description,
            ),
            TextField(
              maxLength: 300,
              onChanged: (context) {},
              maxLines: 4,
              decoration: InputDecoration(hintText: "Бул жерге жазыныз"),
            ),
            Text(
              "Категориялар",
              style: TextStyles.description,
            ),
            Container(
              height: 50,
              width: 400,
              color: AppColors.starGrey,
              child: DropdownButton<String>(
                value: selectedCategory,
                hint: Text("Категория танданыз"),
                borderRadius: BorderRadius.circular(40),
                items: categoryTitles.map((String title) {
                  return DropdownMenuItem<String>(
                    value: title,
                    child: Text(title),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCategory = newValue;
                  });
                },
              ),
            ),
            Text(
              "Телефон номеринизди жазыныз",
              style: TextStyles.description,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Телефон номер',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'KG',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            Text("What's app номер жазыныз", style: TextStyles.description),
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'What\'s app номер жвзыныз',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'KG',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ],
        ),
      ),
    );
  }
}
