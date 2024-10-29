import 'package:flutter/material.dart';
import 'package:naryn_market/constants/colors.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: Wrap(
          spacing: 15.0, // gap between adjacent chips
          runSpacing: 15.0, // gap between lines
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: 190,
              height: 250,
              clipBehavior: Clip.hardEdge, //default is none

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: AppColors.lightGrey)),
              child: Column(children: [
                Image.asset('assets/icons/car.jpeg'),
                const SizedBox(
                  height: 10,
                ),

                const Text(
                    maxLines: 3,
                    "Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff13161B),
                        fontSize: 14,
                        fontFamily: 'NotoSans')),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "10000000 сом",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff13161B),
                          fontSize: 16,
                          fontFamily: 'NotoSans'),
                    ),
                    const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
                // Image.network(src)
              ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: 190,
              height: 250,
              clipBehavior: Clip.hardEdge, //default is none

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: AppColors.lightGrey)),
              child: Column(children: [
                Image.asset('assets/icons/car.jpeg'),
                const SizedBox(
                  height: 10,
                ),

                const Text(
                    maxLines: 3,
                    "Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff13161B),
                        fontSize: 14,
                        fontFamily: 'NotoSans')),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "10000000 сом",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff13161B),
                          fontSize: 16,
                          fontFamily: 'NotoSans'),
                    ),
                    const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
                // Image.network(src)
              ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: 190,
              height: 250,
              clipBehavior: Clip.hardEdge, //default is none

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: AppColors.lightGrey)),
              child: Column(children: [
                Image.asset('assets/icons/car.jpeg'),
                const SizedBox(
                  height: 10,
                ),

                const Text(
                    maxLines: 3,
                    "Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff13161B),
                        fontSize: 14,
                        fontFamily: 'NotoSans')),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "10000000 сом",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff13161B),
                          fontSize: 16,
                          fontFamily: 'NotoSans'),
                    ),
                    const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
                // Image.network(src)
              ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: 190,
              height: 250,
              clipBehavior: Clip.hardEdge, //default is none

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: AppColors.lightGrey)),
              child: Column(children: [
                Image.asset('assets/icons/car.jpeg'),
                const SizedBox(
                  height: 10,
                ),

                const Text(
                    maxLines: 3,
                    "Levelo Morphix Gripstand PU Leather Case - iPhone 14 Pro Max - Black",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff13161B),
                        fontSize: 14,
                        fontFamily: 'NotoSans')),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "10000000 сом",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff13161B),
                          fontSize: 16,
                          fontFamily: 'NotoSans'),
                    ),
                    const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
                // Image.network(src)
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
