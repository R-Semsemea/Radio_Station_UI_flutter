import 'package:flutter/material.dart';

import '../../../control/home_layout_controller.dart';

Widget BottomNav(BuildContext context, HomeLayoutController controller) {
  List<String> bottomNavIcons = [
    "assets/png/bottom_navigation_icons/home.png",
    "assets/png/bottom_navigation_icons/radio_stations.png",
    "assets/png/bottom_navigation_icons/podcast.png",
    "assets/png/bottom_navigation_icons/events.png",
    "assets/png/bottom_navigation_icons/profile.png"
  ];
  List<String> bottomNavNames = [
    "Home",
    "Radio Stations",
    "Podcasts",
    "Events",
    "Profile"
  ];
  return LayoutBuilder(builder: (context, constraints) {
    double width = constraints.maxWidth;
    double height = constraints.maxHeight;
    return Container(
        decoration: const BoxDecoration(
          color: Color(0xff181A26),
          boxShadow: [
            BoxShadow(
              color: Color(0xff0F0E15),
              offset: Offset(0.0, -9.0), //(x,y)
              blurRadius: 15.0,
            ),
          ],
        ),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemExtent: width / bottomNavIcons.length,
            itemCount: bottomNavIcons.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => InkWell(
                  onTap: () => controller.onTap(index),
                  child: Column(
                    children: [
                      SizedBox(
                        width: width * 0.064,
                        child: Image.asset(
                          "assets/png/bottom_navigation_icons/indicator.png",
                          color: controller.currentIndex == index
                              ? const Color(0xffFB6580)
                              : const Color(0xff181A26),
                        ),
                      ),
                      Divider(height: height * 0.1941),
                      SizedBox(
                        width: width * 0.064,
                        height: height * 0.2331,
                        child: Image.asset(
                          bottomNavIcons[index],
                          color: controller.currentIndex == index
                              ? const Color(0xffFB6580)
                              : const Color(0xff5C5E6F),
                        ),
                      ),
                      Divider(height: height * 0.0796),
                      SizedBox(
                        width: width * 0.1368,
                        child: Text(
                          bottomNavNames[index],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 9,
                              color: controller.currentIndex == index
                                  ? const Color(0xffFB6580)
                                  : const Color(0xff5C5E6F)),
                        ),
                      )
                    ],
                  ),
                )));
  });
}
