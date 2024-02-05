import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/view/screen/profile/profile_constants.dart';

import '../../../controller/profile_controller.dart';
import '../../../global_constants.dart';
import 'components/favourite_broadcast_entities.dart';
import 'components/favourite_radio_station_entities.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) => LayoutBuilder(builder: (context, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    height: constraints.maxHeight * 0.0620,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.0586),
                    height: constraints.maxHeight * 0.1057,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Expanded(child: profileLabel),
                        SizedBox(
                            height: constraints.maxHeight * 0.0221,
                            width: constraints.maxWidth * 0.0459,
                            child: buildIcon(
                              context: context,
                              icon: "${pngIconsPath}more_vertical.png",
                            )),
                        VerticalDivider(width: constraints.maxWidth * 0.0781),
                        searchIcon(context),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: constraints.maxHeight * 0.1650,
                      width: constraints.maxHeight * 0.1650,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xffF11775),
                          // Change the color of the border
                          width: 6.0, // Change the thickness of the border
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          radius: double.infinity,
                          backgroundImage: AssetImage('assets/png/profile.png'),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: constraints.maxHeight * 0.0211,
                  ),
                  const Center(
                    child: Text(
                      "Gail Forcewind",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: circular),
                    ),
                  ),
                  Divider(
                    height: constraints.maxHeight * 0.0028,
                  ),
                  const Center(
                    child: Text("gailforcewind2009@email.com",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff5C5E6F),
                            fontFamily: hkMedium)),
                  ),
                  Container(
                    height: constraints.maxHeight * 0.0874,
                    padding:
                        EdgeInsets.only(left: constraints.maxWidth * 0.0586),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Favourite Podcasts",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: hkBold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.1734,
                    child: favouriteBroadcastEntities(
                        context, controller.favouriteBroadcasts),
                  ),
                  Container(
                    height: constraints.maxHeight * 0.0789,
                    padding:
                        EdgeInsets.only(left: constraints.maxWidth * 0.0586),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Favourite Radio Stations",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: hkBold),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.0586),
                    child: favouriteRadioStationEntities(
                        context, controller.favouriteRadioStations),
                  ))
                ],
              );
            }));
  }
}
