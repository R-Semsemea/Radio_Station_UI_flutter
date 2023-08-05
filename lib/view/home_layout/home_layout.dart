import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../control/home_layout_controller.dart';
import '../../global_constants.dart';
import '../../model/broadcast.dart';
import '../broadcast_play/broadcast_play.dart';
import '../events/events.dart';
import '../home/home.dart';
import '../profile/profile.dart';
import '../radio_stations/radio_stations.dart';
import 'components/bottom_navigation_bar.dart';
//import '../broadcast_play.dart';

class HomeLayout extends StatelessWidget {
  List<Widget> screens = [
    Home(),
    RadioStations(),
    BroadcastPlay(
        selectedBroadcast: Broadcast(
      title: "The Jordan Harbinger show",
      subTitle: "Celeste Headlee",
      background: "assets/png/background_image.png",
      photo: "assets/png/popular_broadcasts/1.png",
    )),
    Events(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLayoutController>(
        init: HomeLayoutController(),
        builder: (controller) => Container(
              decoration: BoxDecoration(gradient: backgroundRadialGradient),
              child: LayoutBuilder(builder: (context, constraints) {
                //the whole height and width of the screen
                return Scaffold(
                  backgroundColor: controller.currentIndex == 0
                      ? const Color(0xff13131A)
                      : Colors.transparent,
                  body: screens[controller.currentIndex],
                  bottomNavigationBar: SizedBox(
                    height: constraints.maxHeight * 0.1268,
                    width: double.infinity,
                    child: BottomNav(context, controller),
                  ),
                );
              }),
            ));
  }
}
