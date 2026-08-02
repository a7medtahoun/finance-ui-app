import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app_ui/core/widgets/custom_space.dart';
import 'package:finance_app_ui/feature/main_screen/home/widget/card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselsliderWidget extends StatefulWidget {
  const CustomCarouselsliderWidget({super.key});

  @override
  State<CustomCarouselsliderWidget> createState() =>
      _CustomCarouselsliderWidgetState();
}

class _CustomCarouselsliderWidgetState
    extends State<CustomCarouselsliderWidget> {
      double currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            viewportFraction: 0.7,
            enlargeFactor: 0.2,
            initialPage: 0,
            enableInfiniteScroll: true,
            padEnds: false,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentPage=index.toDouble();
              });
            },
          ),
          items: [
            CardItemWidget(),
            CardItemWidget(),
            CardItemWidget()
          ], 
        ),
        CustomSpaceHeight(10.h),
        DotsIndicator(
  dotsCount:3,
  position: currentPage,
  decorator: DotsDecorator(
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ),
)
      ],
    );
  }
}
