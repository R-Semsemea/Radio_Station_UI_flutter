import 'package:flutter/material.dart';
import 'package:radio_station/controller/home_controller.dart';

import '../../../constants.dart';

Widget BottomNav(BuildContext context, HomeController controller) {
  List<String> bottomNavIcons = [
    "asset_files/png/Home_Icon.png",
    "asset_files/png/Radio_Stations_Icon.png",
    "asset_files/png/Podcast_Icon.png",
    "asset_files/png/Events_Icon.png",
    "asset_files/png/Profile_Icon.png"
  ];
  List<String> bottomNavNames = [
    "Home",
    "Radio Stations",
    "Podcasts",
    "Events",
    "Profile"
  ];

  return Container(
    height: heightOfScreen(context, 0.10),
    color: Color(0xff181A26),
    child: ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemExtent: widthOfScreen(context, 1 / bottomNavIcons.length),
      itemCount: bottomNavIcons.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: () => controller.onPressNav(index),
        child: Container(
          /*decoration: controller.currentIndex == index
              ? BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 4, color: Color(0xffFB6580))))
              : null,*/
          child: Column(
            children: [
              SizedBox(
                  width: 36 ,
                  child: Image.asset("asset_files/png/Indicator.png",
                      color: controller.currentIndex == index
                          ? Color(0xffFB6580)
                          : Color(0xff181A26))),
              Divider(
                color: Colors.transparent,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(bottomNavIcons[index],
                          color: controller.currentIndex == index
                              ? Color(0xffFB6580)
                              : Color(0xff5C5E6F)),
                    ),
                    Divider(
                      color: Colors.transparent,
                    ),
                    Text(
                      bottomNavNames[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Circular",
                          color: controller.currentIndex == index
                              ? Color(0xffFB6580)
                              : Color(0xff5C5E6F)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
