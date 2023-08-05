import 'package:flutter/material.dart';
import 'package:radio_station/control/home_controller.dart';
import 'package:radio_station/view/home/home_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../model/song.dart';

Widget cover(BuildContext context, List<Song> song, HomeController controller) {
  return LayoutBuilder(builder: (context, constraints) {
    //only cover height and whole width
    return PageView.builder(
      controller: controller.pageController,
      scrollDirection: Axis.vertical,
      itemCount: controller.songs.length > 4 ? 4 : controller.songs.length,
      //4 cover songs max
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(song[index].photo), fit: BoxFit.cover),
              ),
            ),
            Column(
              children: [
                Divider(height: constraints.maxHeight * 0.2991),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.0506),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmoothPageIndicator(
                          axisDirection: Axis.vertical,
                          controller: controller.pageController,
                          count: controller.songs.length > 4
                              ? 4
                              : controller.songs.length,
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
                          width: constraints.maxWidth * 0.0666,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(song[index].singer,
                                style: coverLargeTextStyle),
                            Divider(
                              height: constraints.maxHeight * 0.01,
                            ),
                            Text(song[index].name, style: coverSmallTextStyle)
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  });
}
