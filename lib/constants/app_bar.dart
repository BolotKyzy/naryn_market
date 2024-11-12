import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/models/news_model/news_data.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key})
      : preferredSize = const Size.fromHeight(100),
        super(
          key: key,
        );

  @override
  final Size preferredSize; // default is 56.0

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // color: const Color(0xff05c3de),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              // Expanded(
              // ),
              Expanded(
                  child: Text(
                "Нарын маркет",
                style: TextStyle(
                    color: AppColors.darkBlue,
                    fontFamily: "NotoSans",
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Navigator.pushNamed(context, 'menuList');
                },
                // Icons.menu,
                // color: Colors.white,
                // size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
