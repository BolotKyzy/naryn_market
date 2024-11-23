import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: const Center(
        child: Text(
          "Нарын маркет",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'NotoSans',
              fontWeight: FontWeight.w600,
              fontSize: 42),
        ),
      ),
    );
  }
}
