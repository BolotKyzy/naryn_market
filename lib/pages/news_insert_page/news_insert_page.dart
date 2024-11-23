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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Жарыяныздын суротун жуктонуз",
              style: TextStyles.newsCreateTitle,
            ),
            const SizedBox(
              height: 10,
            ),
            StaggeredGrid.count(
              crossAxisCount: 6,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 2,
                  child: Container(
                    child: const Icon(Icons.add),
                    color: AppColors.starGrey,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    child: Icon(Icons.add),
                    color: AppColors.starGrey,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    child: Icon(Icons.add),
                    color: AppColors.starGrey,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    child: Icon(Icons.add),
                    color: AppColors.starGrey,
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    child: Icon(Icons.add),
                    color: AppColors.starGrey,
                  ),
                ),
              ], // End off grid
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              maxLength: 300,
              onChanged: (context) {},
              maxLines: 3,
              decoration:
                  InputDecoration(hintText: "Бул жерге жарнаманызды жазыныз"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.lightGrey.withOpacity(0.6)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // boxShadow: [
                //   BoxShadow(
                //       color: AppColors.darkBlue.withOpacity(0.1),
                //       blurRadius: 8,
                //       offset: Offset(0, 2))
                // ]
              ),
              // color: AppColors.starGrey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: selectedCategory,
                  style: TextStyles.newsCreateTitle,
                  isExpanded: true,
                  hint: Text(
                    "Категория танданыз",
                    style: TextStyles.newsCreateTitle,
                  ),
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
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Телефон номериниз: ",
              style: TextStyles.newsCreateTitle,
            ),
            const SizedBox(
              height: 5,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'KG',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text("What's app номериниз: ", style: TextStyles.newsCreateTitle),
            const SizedBox(
              height: 5,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide:
                      BorderSide(color: AppColors.darkBlue.withOpacity(0.2)),
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
