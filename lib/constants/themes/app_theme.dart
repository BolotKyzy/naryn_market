import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';

final customLightTheme = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(iconTheme: IconThemeData(size: 40)),
  iconTheme: const IconThemeData(color: AppColors.darkBlue, size: 30),
  primaryColor: AppColors.white,
  primaryColorDark: AppColors.white,
  brightness: Brightness.light,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white)),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(width: 1, color: Color(0xFFB9C9D1)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
          fontSize: 16.0,
          color: AppColors.lightGrey,
          fontFamily: 'NotoSans',
          fontWeight: FontWeight.w400),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(width: 1, color: Color(0xffB9C8D1))),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0xffB9C8D1))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0xffB9C8D1))),
      filled: true,
      isDense: true,
      fillColor: AppColors.white,
      hintStyle: const TextStyle(
          fontSize: 16.0,
          color: AppColors.lightGrey,
          fontFamily: 'NotoSans',
          fontWeight: FontWeight.w400)),
);
