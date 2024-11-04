import 'package:flutter/material.dart';
import 'package:naryn_market/classes/menu_list_class.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Navigator.pop(context);
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: menuList.map((menuItem) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: menuItem.onTap,
                child: Row(
                  children: [
                    menuItem.menuIcon,
                    const SizedBox(width: 20),
                    menuItem.menuText,
                    const Expanded(child: SizedBox()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
