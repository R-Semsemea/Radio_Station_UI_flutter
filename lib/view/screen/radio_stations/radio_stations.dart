import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/core/constant/app_scroll_physics.dart';
import 'package:radio_station/view/widget/custom_search_icon.dart';

import '../../../controller/radio_stations_controller.dart';
import '../../widget/radio_stations/custom_banner.dart';
import '../../widget/radio_stations/custom_list_selector.dart';
import '../../widget/radio_stations/custom_popular_broadcast_list.dart';
import '../../widget/radio_stations/custom_radio_genre_list.dart';
import 'component/radio_genre_page.dart';

class RadioStations extends StatelessWidget {
  const RadioStations({super.key});

  @override
  Widget build(BuildContext context) {
    RadioStationsControllerImplement controller =
        Get.put(RadioStationsControllerImplement());
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding:
            EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.0586),
        child: Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.062,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.0888,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Radio Stations",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SearchIcon(),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.0592,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GetBuilder<RadioStationsControllerImplement>(
                    builder: (controller) => CustomListSelector(
                      name: "Popular Broadcast",
                      pageIndex: 0,
                      onPressListSelector: () =>
                          controller.onPressListSelector(0),
                    ),
                  ),
                  SizedBox(width: constraints.maxWidth * 0.0453),
                  GetBuilder<RadioStationsControllerImplement>(
                    builder: (controller) => CustomListSelector(
                        name: "Radio Genre",
                        pageIndex: 1,
                        onPressListSelector: () =>
                            controller.onPressListSelector(1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.1255,
              child: const CustomBanner(),
            ),
            Expanded(
              child: PageView(
                physics: AppScrollPhysics.never,
                controller: controller.pageController,
                children: const [
                  CustomPopularBroadcastList(),
                  CustomRadioGenreList(),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
