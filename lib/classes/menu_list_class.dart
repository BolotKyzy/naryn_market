import 'package:flutter/material.dart';

class MenuListClass {
  const MenuListClass(this.menuIcon, this.menuText, this.onTap);
  final Icon menuIcon;
  final Text menuText;
  final GestureTapCallback onTap;
}

List<MenuListClass> menuList = [
  MenuListClass(
      Icon(Icons.newspaper_outlined), Text("Баардык жарнамалар"), () {}),
  MenuListClass(Icon(Icons.widgets_outlined), Text("Болумдор"), () {}),
  MenuListClass(Icon(Icons.compare_outlined), Text("Жарнама беруу"), () {}),
  MenuListClass(
      Icon(Icons.edit_notifications_outlined), Text("Конгуро"), () {}),
  MenuListClass(Icon(Icons.share), Text("Тиркемени болушуу"), () {}),
  MenuListClass(
      Icon(Icons.download_outlined), Text("Тиркемени жаныртуу"), () {}),
];
