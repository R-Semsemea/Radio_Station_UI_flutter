import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_station/controller/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../model/Song.dart';

Widget Cover(BuildContext context, List<Song> song, HomeController controller) {
  return PageView.builder(
    controller: controller.pageController,
    scrollDirection: Axis.vertical,
    itemCount: controller.songs.length,
    itemBuilder: (BuildContext context, int index) {
      return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(song[index].photo),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                SmoothPageIndicator(
                  axisDirection: Axis.vertical,
                  controller: controller.pageController,
                  count: controller.songs.length,
                  effect: const JumpingDotEffect(
                      jumpScale: 1.6,
                      verticalOffset: 5,
                      dotHeight: 6,
                      dotWidth: 6,
                      activeDotColor: Colors.white,
                      dotColor: Colors.white,
                      paintStyle: PaintingStyle.stroke),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(song[index].singer,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: "Circular")),
                    Text(song[index].name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: "Circular"))
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
