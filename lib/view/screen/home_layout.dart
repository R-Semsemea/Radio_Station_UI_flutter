import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/view/screen/podcasts/podcasts.dart';

import '../../controller/home_layout_controller.dart';
import '../../core/constant/screen_dimensions.dart';
import '../../data/model/broadcast.dart';
import '../widget/custom_background_gradient.dart';
import '../widget/home_layout/custom_bottom_navigation_bar.dart';
import 'events/events.dart';
import 'home.dart';
import 'profile/profile.dart';
import 'radio_stations/radio_stations.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    HomeLayoutControllerImplement controller =
        Get.put(HomeLayoutControllerImplement());
    return Scaffold(
      backgroundColor: AppColors.lightChineseBlack,
      body: Stack(
        children: [
          GetBuilder<HomeLayoutControllerImplement>(
            builder: (controller) => controller.currentIndex != 0
                ? const CustomBackgroundGradient()
                : const SizedBox(),
          ),
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            children: [
              const Home(),
              const RadioStations(),
              Podcasts(
                  selectedBroadcast: Broadcast(
                title: "The Jordan Harbinger show",
                subTitle: "Celeste Headlee",
                background: "assets/png/background_image.png",
                photo: "assets/png/popular_broadcasts/1.png",
              )),
              Events(),
              Profile(),
            ],
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: ScreenDimension.height * 0.12,
        child: GetBuilder<HomeLayoutControllerImplement>(
          builder: (controller) => CustomBottomNavigationBar(
            currentIndex: controller.currentIndex,
            onPress: controller.onTap,
          ),
        ),
      ),
    );
  }
}
