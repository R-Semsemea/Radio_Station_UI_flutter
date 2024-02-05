import 'package:flutter/material.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  final PageController pageController;
  final int count;
  final Color? activeDotColor;
  final Color? dotColor;
  final double? dotHeight;
  final double? dotWidth;
  final Axis? axisDirection;

  const CustomPageIndicator(
      {Key? key,
      required this.pageController,
      this.activeDotColor,
      this.dotColor,
      this.axisDirection,
      this.dotHeight,
      this.dotWidth, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      axisDirection: axisDirection ?? Axis.horizontal,
      controller: pageController,
      count: count,
      effect: JumpingDotEffect(
          jumpScale: 1.6,
          verticalOffset: 5,
          dotHeight: dotHeight ?? 10,
          dotWidth: dotWidth ?? 10,
          activeDotColor: activeDotColor ?? AppColors.white,
          dotColor: dotColor ?? AppColors.white,
          paintStyle: PaintingStyle.stroke),
    );
  }
}
