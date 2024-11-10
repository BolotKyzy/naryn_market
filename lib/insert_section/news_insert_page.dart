import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:naryn_market/constants/colors.dart';

class NewsInsertPage extends StatelessWidget {
  const NewsInsertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Суроттор"),
        Text("Жарыяныздын суроту болсо. томонго жуктонуз"),
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
          ],
        ),
      ],
    );
  }
}
