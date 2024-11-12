import 'package:flutter/material.dart';
import 'package:naryn_market/classes/menu_list_class.dart';
import 'package:naryn_market/constants/text_styles/text_styles.dart';

class TopSectionsPage extends StatelessWidget {
  const TopSectionsPage({super.key});

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
          children: AppConstants.getDefaultMenuItems().map((menuItem) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  menuItem['action'](context);
                },
                child: Row(
                  children: [
                    menuItem["icon"],
                    const SizedBox(width: 20),
                    Text(
                      menuItem["title"],
                      style: TextStyles.topSections,
                    ),
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
