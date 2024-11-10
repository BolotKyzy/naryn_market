import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naryn_market/constants/colors.dart';
import 'package:naryn_market/pages/news_detail_page/components/news_image_view.dart';
import 'package:photo_view/photo_view.dart';

class ZoomedImagePage extends StatefulWidget {
  const ZoomedImagePage({super.key, required this.item});
  final int item;

  @override
  State<ZoomedImagePage> createState() => _ZoomedImagePageState();
}

class _ZoomedImagePageState extends State<ZoomedImagePage> {
  late CarouselSliderController buttonCarouselController;
  int currentSelectedImage = 0;
  @override
  void initState() {
    buttonCarouselController = CarouselSliderController();
    currentSelectedImage = widget.item;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlack,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xff99A3AF),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              CarouselSlider(
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  initialPage: widget.item,
                  height: 304.0,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentSelectedImage = index;
                    });
                  },
                ),
                items: showGalleryZoomedPage(
                  imgList,
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    left: -2.0,
                    top: 11.0,
                    child: InkResponse(
                      onTap: () {
                        setState(() {
                          currentSelectedImage--;

                          buttonCarouselController
                              .jumpToPage(currentSelectedImage);
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset('assets/icons/left_arrow.svg',
                            width: 12.0, semanticsLabel: 'Prev'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Row(
                            children: List.generate(imgList.length, (index) {
                              return InkWell(
                                onTap: () {
                                  buttonCarouselController.jumpToPage(index);
                                },
                                child: Container(
                                  decoration: index != currentSelectedImage
                                      ? BoxDecoration(
                                          border: Border.all(
                                              color: Colors.transparent),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0)),
                                        )
                                      : BoxDecoration(
                                          border:
                                              Border.all(color: AppColors.blue),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                  margin: const EdgeInsets.only(
                                      left: 5.0, right: 5.0),
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -2.0,
                    top: 11.0,
                    child: InkResponse(
                      onTap: () {
                        setState(() {
                          currentSelectedImage++;

                          buttonCarouselController
                              .jumpToPage(currentSelectedImage);
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
              ),
            ]),
      ),
    );
  }

  List<Widget> showGalleryZoomedPage(List images) {
    List<Widget> items = [];
    // chewieController = ChewieController(
    //     videoPlayerController: videoPlayerController,
    //     deviceOrientationsOnEnterFullScreen: [DeviceOrientation.portraitUp],
    //     aspectRatio: 16 / 9,
    //     autoPlay: playVideo,
    //     looping: true,
    //     autoInitialize: true);

    for (int i = 0; i < images.length; i++) {
      items.add(PhotoView(
        backgroundDecoration: BoxDecoration(color: Theme.of(context).cardColor),
        imageProvider: NetworkImage(images[i].image.productGallery!),
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
      ));
    }

    return items;
  }
}
