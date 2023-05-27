import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants.dart';
import '../controller/tutorial_controller.dart';

class Tutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        background,
        Align(alignment: Alignment(0,-2.5),child: Image.asset("asset_files/png/tutorial_background.png")),
        GetBuilder<TutorialController>(
          init: TutorialController(),
          builder: (controller) => PageView(
            controller: controller.pageController,
            children: [
              Align(
                  alignment: Alignment(0, -0.7),
                  child: Padding(
                      padding: EdgeInsets.only(right: 25,left: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                              AssetImage("asset_files/png/tutorial.png"),
                              fit: BoxFit.fill),
                        ),
                        height: heightOfScreen(context, 0.50),
                      ))),
              Align(
                  alignment: Alignment(0, -0.7),
                  child: Padding(
                      padding: EdgeInsets.only(right: 25,left: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                              AssetImage("asset_files/png/tutorial.png"),
                              fit: BoxFit.cover),
                        ),
                        height: heightOfScreen(context, 0.50),
                      ))),
              Align(
                  alignment: Alignment(0, -0.7),
                  child: Padding(
                      padding: EdgeInsets.only(right: 25,left: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                              AssetImage("asset_files/png/tutorial.png"),
                              fit: BoxFit.contain),
                        ),
                        height: heightOfScreen(context, 0.50),
                      ))),
              Align(
                  alignment: Alignment(0, -0.7),
                  child: Padding(
                      padding: EdgeInsets.only(right: 25,left: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                              AssetImage("asset_files/png/tutorial.png"),
                              fit: BoxFit.scaleDown),
                        ),
                        height: heightOfScreen(context, 0.50),
                      ))),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(
            0,
            heightOfScreen(context, 0.08),
            widthOfScreen(context, 0.05),
            0,
          ),
          alignment: Alignment.topRight,
          child: GetBuilder<TutorialController>(
              builder: (controller) => TextButton(
                  onPressed: controller.onPressSkip, child: Text("Skip"))),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(widthOfScreen(context, 0.05), 0,
                widthOfScreen(context, 0.05), heightOfScreen(context, 0.1)),
            alignment: Alignment.bottomLeft,
            child: GetBuilder<TutorialController>(
              builder: (controller) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextButton(
                    onPressed: controller.onPressPrevious,
                    child: Text("Previous"),
                  ),
                  const Spacer(),
                  SmoothPageIndicator(
                    controller: controller.pageController,
                    count: 4,
                    effect: const JumpingDotEffect(
                        jumpScale: 1.6,
                        verticalOffset: 5,
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Color(0xffF11775),
                        dotColor: Color(0xffF11775),
                        paintStyle: PaintingStyle.stroke),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      controller.onPressNext();
                    },
                    child: Text("Next"),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
//PageView
