import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';

const lightTextTheme = TextTheme(
    headlineLarge: TextStyle(
      color: AppColors.lightBlack,
      fontFamily: 'NotoSans',
    ),
    displaySmall: TextStyle(
      color: AppColors.lightBlack,
      fontFamily: 'NotoSans',
    ),
    headlineMedium: TextStyle(
      color: AppColors.darkGrey,
      fontFamily: 'NotoSans',
    ),
    headlineSmall: TextStyle(
      // decoration: TextDecoration.lineThrough,
      color: AppColors.lineTrhroughColor,
      fontFamily: 'NotoSans',
    ),
    titleLarge: TextStyle(fontFamily: 'NotoSans', color: AppColors.blue),
    titleMedium: TextStyle(
      color: AppColors.green,
      fontFamily: 'NotoSans',
    ),
    titleSmall: TextStyle(
      color: AppColors.lightGrey,
      fontFamily: 'NotoSans',
    ),
    bodyLarge: TextStyle(
      color: AppColors.orange,
      fontFamily: 'NotoSans',
    ),
    bodyMedium: TextStyle(
      fontFamily: 'NotoSans',
      color: AppColors.white,
    ),
    bodySmall: TextStyle(
      color: AppColors.blackGreyColor,
      fontFamily: 'NotoSans',
    ),
    labelMedium: TextStyle(
      color: AppColors.lightBlack,
      fontFamily: 'NotoSans',
    ),
    labelLarge: TextStyle(fontFamily: 'NotoSans', color: AppColors.darkBlue));

///dark theme
const darkTextTheme = TextTheme(
    displaySmall: TextStyle(
      color: Color(0xffA0ADAD),
      fontFamily: 'NotoSans',
    ),
    labelMedium: TextStyle(
      color: AppColors.darkSecondTextColor,
      fontFamily: 'NotoSans',
    ),
    headlineLarge: TextStyle(
      color: AppColors.darktTextColor,
      fontFamily: 'NotoSans',
    ),
    headlineMedium: TextStyle(
      color: AppColors.darkGrey,
      fontFamily: 'NotoSans',
    ),
    headlineSmall: TextStyle(
      // decoration: TextDecoration.lineThrough,
      color: Color(0xffB3C1C1),
      fontFamily: 'NotoSans',
    ),
    titleLarge: TextStyle(fontFamily: 'NotoSans', color: AppColors.blue),
    titleMedium: TextStyle(
      color: AppColors.green,
      fontFamily: 'NotoSans',
    ),
    titleSmall: TextStyle(
      color: AppColors.darktTextColor,
      fontFamily: 'NotoSans',
    ),
    // bodyLarge: TextStyle(
    //   color: AppColors.orange,
    //   fontFamily: 'NotoSans',
    // ),
    bodyMedium: TextStyle(
      fontFamily: 'NotoSans',
      color: AppColors.white,
    ),
    bodySmall: TextStyle(
      color: Color(0xff424548),
      fontFamily: 'NotoSans',
    ),
    labelLarge: TextStyle(fontFamily: 'NotoSans', color: AppColors.darkBlue));

final customLightTheme = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(iconTheme: IconThemeData(size: 40)),
  iconTheme: const IconThemeData(color: AppColors.darkBlue, size: 30),
  textTheme: lightTextTheme,
  primaryColor: AppColors.white,
  primaryColorDark: AppColors.white,
  brightness: Brightness.light,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textStyle: lightTextTheme.bodyMedium!
              .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white)),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(width: 1, color: Color(0xFFB9C9D1)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: lightTextTheme.headlineLarge!
          .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
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

final customDarkTheme = ThemeData.dark().copyWith(
  textTheme: darkTextTheme,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(width: 0.5, color: Color(0xFFB9C9D1)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: darkTextTheme.labelMedium!
          .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textStyle: darkTextTheme.bodyMedium!
              .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white)),
  primaryColor: AppColors.darkBackgroundColor,
  primaryColorDark: const Color(0xff373737),
  brightness: Brightness.dark,
  inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
          fontSize: 16.0,
          color: AppColors.lightGrey,
          fontFamily: 'NotoSans',
          fontWeight: FontWeight.w400),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(width: 1, color: Color(0xff505859))),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0xff505859))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0xff373737))),
      filled: true,
      isDense: true,
      fillColor: const Color(0xff1D1D1D),
      hintStyle: const TextStyle(
          fontSize: 16.0,
          color: AppColors.lightGrey,
          fontFamily: 'NotoSans',
          fontWeight: FontWeight.w400)),
);
