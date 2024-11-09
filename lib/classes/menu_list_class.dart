import 'package:flutter/material.dart';

class MenuListClass {
  const MenuListClass(this.menuIcon, this.menuText, this.onTap);
  final Icon menuIcon;
  final Text menuText;
  final GestureTapCallback onTap;
}

List<MenuListClass> menuList = [
  MenuListClass(const Icon(Icons.newspaper_outlined),
      const Text("Баардык жарнамалар"), () {}),
  MenuListClass(
      const Icon(Icons.widgets_outlined), const Text("Болумдор"), () {}),
  MenuListClass(
      const Icon(Icons.compare_outlined), const Text("Жарнама беруу"), () {}),
  MenuListClass(const Icon(Icons.edit_notifications_outlined),
      const Text("Конгуро"), () {}),
  MenuListClass(
      const Icon(Icons.share), const Text("Тиркемени болушуу"), () {}),
  MenuListClass(const Icon(Icons.download_outlined),
      const Text("Тиркемени жаныртуу"), () {}),
];
