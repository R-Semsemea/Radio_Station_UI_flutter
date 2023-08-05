import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:radio_station/view/radio_stations/component/popular_broadcast_page.dart';
import 'package:radio_station/view/radio_stations/radio_stations_constants.dart';

import '../../control/radio_stations_controller.dart';
import '../../global_constants.dart';
import 'component/radio_genre_page.dart';

class RadioStations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RadioStationsController>(
      init: RadioStationsController(),
      builder: (controller) => LayoutBuilder(builder: (context, constraints) {
        return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.0586),
          child: Column(
            children: [
              Divider(
                height: constraints.maxHeight * 0.0620,
              ),
              Container(
                padding: const EdgeInsets.only(left: 2),
                height: constraints.maxHeight * 0.0888,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    radioStationLabel,
                    searchIcon(context),
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.0592,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () => controller.onPress(0),
                        child: Text(
                          "Popular Broadcast",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "HK_Bold",
                              color: controller.index == 0
                                  ? activeTabColor
                                  : inactiveTabColor),
                        )),
                    VerticalDivider(width: constraints.maxWidth * 0.0453),
                    InkWell(
                        onTap: () => controller.onPress(1),
                        child: Text(
                          "Radio Genre",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "HK_Bold",
                              color: controller.index == 1
                                  ? activeTabColor
                                  : inactiveTabColor),
                        )),
                  ],
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.1255,
                decoration: bannerPhoto,
                padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * 0.048),
                child: LayoutBuilder(builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [bannerTopText, bannerBottomText],
                      ),
                      Container(
                        height: constraints.maxHeight * 0.2696,
                        width: constraints.maxWidth * 0.2017,
                        decoration: tuneButtonDecoration,
                        child: const Center(
                          child: tuneButtonLabel,
                        ),
                      )
                    ],
                  );
                }),
              ),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  children: [
                    PopularBroadcastPage(
                        context, controller.similarBroadcastObjects),
                    RadioGenrePage(context, controller.similarBroadcastObjects),
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
