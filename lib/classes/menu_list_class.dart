import 'package:flutter/material.dart';
import 'package:naryn_market/constants/text_styles/text_styles.dart';

class MenuListClass {
  const MenuListClass(this.menuIcon, this.menuText, this.onTap);
  final Icon menuIcon;
  final Text menuText;
  final GestureTapCallback onTap;
}

List<MenuListClass> menuList = [
  MenuListClass(
      const Icon(Icons.turned_in_not),
      const Text(
        "Тандалгандар",
        style: TextStyles.topSections,
      ),
      () {}),
  MenuListClass(
      const Icon(Icons.add_card),
      const Text(
        "Менин жарнамаларым",
        style: TextStyles.topSections,
      ),
      () {}),
  MenuListClass(
      const Icon(Icons.edit_notifications_outlined),
      const Text(
        "Конгуро",
        style: TextStyles.topSections,
      ),
      () {}),
  MenuListClass(
      const Icon(Icons.share),
      const Text(
        "Тиркемени болушуу",
        style: TextStyles.topSections,
      ),
      () {}),
  MenuListClass(
      const Icon(Icons.download_outlined),
      const Text(
        "Тиркемени жаныртуу",
        style: TextStyles.topSections,
      ),
      () {}),
];
