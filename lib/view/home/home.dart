import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:radio_station/control/home_controller.dart';
import 'package:radio_station/global_constants.dart';
import 'package:radio_station/view/home/component/cover.dart';
import 'package:radio_station/view/home/home_constants.dart';

import 'component/popular_broadcast_entities.dart';
import 'component/similar_broadcast_entities.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => LayoutBuilder(builder: (context, constraints) {
        //height - bottomNav height and the whole width
        return Stack(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.4809,
              width: double.infinity,
              child: cover(context, controller.songs, controller),
            ),
            Column(
              children: [
                Container(
                    padding:
                        EdgeInsets.only(left: constraints.maxWidth * 0.0509),
                    //from top to popularBroadcastLabel without divider under it
                    height: constraints.maxHeight * 0.3709,
                    width: double.infinity,
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: popularBroadcastLabel)),
                Divider(height: constraints.maxHeight * 0.0183),
                SizedBox(
                  height: constraints.maxHeight * 0.2482,
                  width: double.infinity,
                  child: popularBroadcastEntities(
                      context, controller.broadcastEntities),
                ),
                Container(
                  padding: EdgeInsets.only(left: constraints.maxWidth * 0.0509),
                  height: constraints.maxHeight * 0.0451,
                  width: double.infinity,
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: similarBroadcastLabel),
                ),
                Expanded(
                    child: similarBroadcastEntities(
                        context, controller.similarBroadcastEntities))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(
                    constraints.maxWidth * 0.8994,
                    constraints.maxHeight * 0.062,
                    constraints.maxWidth * 0.0586,
                    0),
                child: searchIcon(context))
          ],
        );
      }),
    );
  }
}
