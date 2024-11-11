import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/constants/text_styles/text_styles.dart';

class NewsDetailsContacts extends StatelessWidget {
  const NewsDetailsContacts(
      {super.key, required this.phoneNumber, required this.whatsappNumber});
  final String phoneNumber;
  final String whatsappNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        InkWell(
          onTap: () {},
          child: Row(children: [
            Expanded(child: Container()),
            const Icon(Icons.call),
            const SizedBox(width: 20),
            Text(phoneNumber, style: TextStyles.phone)
          ]),
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: Row(
            children: [
              Expanded(child: Container()),
              const Icon(FontAwesomeIcons.whatsapp, color: AppColors.green),
              const SizedBox(width: 20),
              Text(whatsappNumber, style: TextStyles.phone)
            ],
          ),
        )
      ],
    );
  }
}
