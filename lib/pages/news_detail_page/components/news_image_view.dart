import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/pages/news_detail_page/components/zoomed_image_page.dart';
import 'package:photo_view/photo_view.dart';

List<String> imgList = [
  "https://www.apple.com/newsroom/images/2024/09/apple-introduces-iphone-16-and-iphone-16-plus/article/geo/Apple-iPhone-16-hero-geo-240909_inline.jpg.large_2x.jpg",
  "https://www.apple.com/newsroom/images/2024/09/apple-introduces-iphone-16-and-iphone-16-plus/article/geo/Apple-iPhone-16-lineup-geo-240909_big.jpg.large_2x.jpg",
  "https://www.apple.com/newsroom/images/2024/09/apple-introduces-iphone-16-and-iphone-16-plus/article/geo/Apple-iPhone-16-finish-lineup-geo-240909_big.jpg.large_2x.jpg",
  "https://www.apple.com/newsroom/images/2024/09/apple-introduces-iphone-16-and-iphone-16-plus/article/Apple-iPhone-16-Camera-Control-01-240909_inline.jpg.large_2x.jpg",
  "https://www.apple.com/newsroom/images/2024/09/apple-introduces-iphone-16-and-iphone-16-plus/article/Apple-iPhone-16-Photographic-Styles-01-240909_inline.jpg.large_2x.jpg"
];

class NewsImageView extends StatefulWidget {
  const NewsImageView({super.key});

  @override
  State<NewsImageView> createState() => _NewsImageViewState();
}

class _NewsImageViewState extends State<NewsImageView> {
  late CarouselSliderController buttonCarouselController;
  int currentSelectedImage = 0;

  @override
  void initState() {
    buttonCarouselController = CarouselSliderController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        carouselController: buttonCarouselController,
        items: showGallery(imgList),
        options: CarouselOptions(
          initialPage: 0,
          height: 304.0,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              currentSelectedImage = index;
            });
          },
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(imgList.length, (index) {
                  return InkWell(
                    onTap: () {
                      buttonCarouselController.jumpToPage(index);
                    },
                    child: Container(
                      decoration: index != currentSelectedImage
                          ? BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0)),
                            )
                          : BoxDecoration(
                              border: Border.all(color: AppColors.blue),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0)),
                            ),
                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                      padding: const EdgeInsets.all(7.0),
                      child: Stack(
                        children: [
                          Image.network(
                            "${imgList[index]}",
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            left: -10.0,
            top: 20.0,
            child: InkResponse(
              onTap: () {
                setState(() {
                  if (currentSelectedImage == 0) {
                    currentSelectedImage = (10) - 1;
                  } else {
                    currentSelectedImage--;
                  }
                  buttonCarouselController.jumpToPage(currentSelectedImage);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset('assets/icons/left_arrow.svg',
                    width: 12.0, semanticsLabel: 'Next'),
              ),
            ),
          ),
          Positioned(
            right: -10.0,
            top: 20.0,
            child: InkResponse(
              onTap: () {
                setState(() {
                  if (currentSelectedImage == (10) - 1) {
                    currentSelectedImage = 0;
                  } else {
                    currentSelectedImage++;
                  }
                  buttonCarouselController.jumpToPage(currentSelectedImage);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset('assets/icons/right_arrow.svg',
                    width: 12.0, semanticsLabel: 'Next'),
              ),
            ),
          ),
        ],
      )
    ]);
  }

  List<Widget> showGallery(
    List images,
  ) {
    List<Widget> items = [];

    for (int i = 0; i < images.length; i++) {
      items.add(InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ZoomedImagePage(item: i++, images: images),
              ));
        },
        child: PhotoView(
          backgroundDecoration:
              BoxDecoration(color: Theme.of(context).cardColor),
          imageProvider: NetworkImage(images[i]),
          loadingBuilder: (context, ImageChunkEvent? event) => Center(
            child: SizedBox(
              width: 45.0,
              height: 45.0,
              child: CircularProgressIndicator(
                backgroundColor: const Color(0xFFFFB900),
                value: event == null
                    ? 0
                    : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
              ),
            ),
          ),
        ),
      ));
    }

    return items;
  }
}
