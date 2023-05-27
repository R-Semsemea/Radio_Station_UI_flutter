import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:radio_station/model/Song.dart';
import 'package:radio_station/constants.dart';
import 'package:radio_station/controller/home_controller.dart';
import 'package:radio_station/view/home/component/cover.dart';
import 'package:radio_station/view/home/component/bottom_navgiation_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'component/popular_broadcast_card.dart';

class Home extends StatelessWidget {
  Song a = Song(name: "fds", photo: "photo", singer: "singer");

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => Scaffold(
              body: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: heightOfScreen(context, 0.40),
                        child: Stack(
                          children: [
                            Cover(context, controller.songs, controller),
                            Align(
                              alignment: Alignment(0.9, -0.77),
                              child: Icon(
                                Icons.search,
                                size: 40,
                                color: Color(0xff5B5E6F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xff13131A),
                        height: heightOfScreen(context, 0.50),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment(0.0, -0.2),
                    child: Container(
                      padding:
                          EdgeInsets.only(left: widthOfScreen(context, 0.05)),
                      width: double.infinity,
                      height: heightOfScreen(context, 0.28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Popular Broadcast",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Circular",
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.transparent,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                PopularBroadcastCard(
                                    context,
                                    "asset_files/png/1.png",
                                    "THE JORDAN HARBING",
                                    "Celeste Headlee"),
                                VerticalDivider(),
                                PopularBroadcastCard(
                                    context,
                                    "asset_files/png/2.png",
                                    "FROM NEGATIVE TO POSTIVE",
                                    "The King of Miami"),
                                VerticalDivider(),
                                PopularBroadcastCard(
                                    context,
                                    "asset_files/png/3.png",
                                    "I SURVIVED",
                                    "Cold Case Files: Modus Operandi")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              bottomNavigationBar: BottomNav(context,controller),
            ));
  }
}
