import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/core/constant/app_scroll_physics.dart';
import 'package:radio_station/core/constant/screen_dimensions.dart';
import 'package:radio_station/data/data_source/static/on_boarding_elements.dart';
import 'package:radio_station/view/widget/custom_page_Indicator.dart';
import 'package:radio_station/view/widget/on_boarding/custom_page_view_element.dart';
import 'package:radio_station/view/widget/on_boarding/custom_text_button.dart';

import '../../controller/on_boarding_controller.dart';
import '../../core/constant/app_colors.dart';
import '../widget/on_boarding/custom_background.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImplement controller =
        Get.put(OnBoardingControllerImplement());
    return Scaffold(
      body: Stack(children: [
        const CustomBackground(),
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: ScreenDimension.height * 0.17),
          child: PageView(
            physics: AppScrollPhysics.bouncing,
            controller: controller.pageController,
            children: [
              CustomPageViewElement(element: onBoardingElements[0]),
              CustomPageViewElement(element: onBoardingElements[0]),
              CustomPageViewElement(element: onBoardingElements[0]),
              CustomPageViewElement(element: onBoardingElements[0]),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenDimension.width * 0.05,
              vertical: ScreenDimension.height * 0.07),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                  alignment: const Alignment(1, 0),
                  child: GetBuilder<OnBoardingControllerImplement>(
                      builder: (controller) {
                    return CustomTextButton(
                        name: "Skip", onPress: controller.onPressSkip);
                  })),
              Align(
                alignment: const Alignment(0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomTextButton(
                        name: "Previous", onPress: controller.onPressPrevious),
                    const Spacer(),
                    CustomPageIndicator(
                      count: 4,
                      pageController: controller.pageController,
                      activeDotColor: AppColors.electricPink,
                      dotColor: AppColors.electricPink,
                    ),
                    const Spacer(),
                    CustomTextButton(
                        name: "Next", onPress: controller.onPressNext),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
