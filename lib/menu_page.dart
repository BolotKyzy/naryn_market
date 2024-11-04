import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(
                10,
                (index) => FractionallySizedBox(
                      widthFactor: 0.315,
                      child: Card(
                          color: AppColors.grey,
                          child: SizedBox(
                            height: 140.0,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(5.0),
                              onTap: () {},
                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.abc_sharp),
                                      const SizedBox(height: 20.0),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 5.0),
                                        child: Text("Category",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                      ),
                                    ]),
                              ),
                            ),
                          )),
                    )),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
