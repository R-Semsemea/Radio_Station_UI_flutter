import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/view/widget/custom_page_Indicator.dart';

import '../../../controller/home_controller.dart';

class CustomBackgroundAlbumCover extends StatelessWidget {
  const CustomBackgroundAlbumCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find<HomeController>();
    return Stack(
      children: [
        PageView.builder(
          controller: controller.pageController,
          scrollDirection: Axis.vertical,
          itemCount: controller.songs.length > 4 ? 4 : controller.songs.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(controller.songs[index].photo),
                        fit: BoxFit.cover),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.6, -0.35),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(controller.songs[index].singer,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(color: AppColors.lightRhythm2)),
                      Text(controller.songs[index].name,
                          style: Theme.of(context).textTheme.labelLarge),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        Align(
          alignment: const Alignment(-0.9, -0.35),
          child: CustomPageIndicator(
            count: controller.songs.length,
            pageController: controller.pageController,
            axisDirection: Axis.vertical,
            dotHeight: 6,
            dotWidth: 6,
          ),
        ),
      ],
    );
  }
}
