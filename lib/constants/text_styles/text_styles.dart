import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';

class TextStyles {
  static const description = TextStyle(
      color: AppColors.lightBlack,
      fontFamily: 'NotoSans',
      fontSize: 16,
      fontWeight: FontWeight.w500);
  static const newsDetailDesc = TextStyle(
      color: AppColors.lightBlack,
      fontFamily: 'NotoSans',
      fontSize: 20,
      fontWeight: FontWeight.w600);

  static const price = TextStyle(
      color: AppColors.black,
      fontFamily: 'NotoSans',
      fontSize: 18,
      fontWeight: FontWeight.w700);
  static const newsDetailPrice = TextStyle(
      color: AppColors.black,
      fontFamily: 'NotoSans',
      fontSize: 22,
      fontWeight: FontWeight.w700);

  static const phone = TextStyle(
      color: AppColors.black,
      fontSize: 18,
      fontFamily: "NotoSans",
      fontWeight: FontWeight.w500);

  static const menu = TextStyle(
      color: AppColors.black,
      fontSize: 11,
      fontFamily: 'NotoSans',
      fontWeight: FontWeight.w700);

  static const newsDetailDate = TextStyle(
      color: AppColors.lightBlack, fontFamily: 'NotoSans', fontSize: 14);
}
