import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/global_constants.dart';
import 'package:radio_station/view/broadcast_play/broadcast_play_constants.dart';

import '../../control/broadcast_play_controller.dart';
import '../../model/broadcast.dart';

class BroadcastPlay extends StatelessWidget {
  //selected broadcast to play
  final Broadcast selectedBroadcast;

  const BroadcastPlay({super.key, required this.selectedBroadcast});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BroadcastPlayController>(
        init: BroadcastPlayController(),

        ///full height - bottom nav height && full width
        builder: (controller) => LayoutBuilder(builder: (context, constraints) {
              return Stack(
                children: [
                  SizedBox(
                      height: constraints.maxHeight * 0.4739,

                      ///height of the background image layers && full width
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Stack(
                          children: [
                            ///background image contains three layers(background image - radial gradient - liner gradient)
                            ///backgound image:
                            Container(
                              height: constraints.maxHeight * 0.8333,
                              width: constraints.maxWidth,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          selectedBroadcast.background))),
                            ),

                            ///two layers of radial gradient:
                            ///1:
                            radialGradient(
                                height: constraints.maxHeight * 0.8340,
                                width: constraints.maxWidth,
                                radius: 0.7),

                            ///2:
                            radialGradient(
                                height: constraints.maxHeight * 0.8333,
                                width: constraints.maxWidth,
                                radius: 1),

                            ///two layers of linear gradient:
                            //1:
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: linearGradient(
                                  height: constraints.maxHeight * 0.5,
                                  width: constraints.maxWidth,
                                  stops: [0, 1]),
                            ),

                            ///2:
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: linearGradient(
                                  height: constraints.maxHeight * 0.5,
                                  width: constraints.maxWidth,
                                  stops: [0, 0.3]),
                            ),
                          ],
                        );
                      })),

                  ///last layer (broadcastPhoto - title.. - control)
                  ///padding for the entire layer
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.0506),
                    child: Column(
                      children: [
                        Divider(height: constraints.maxHeight * 0.2468),

                        ///broadcast photo
                        Container(
                          height: constraints.maxHeight * 0.2679,
                          width: constraints.maxHeight * 0.2679,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    selectedBroadcast.photo,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Divider(height: constraints.maxHeight * 0.0352),

                        ///title of broadcast
                        SizedBox(
                          height: constraints.maxHeight * 0.1248,
                          child: Column(
                            children: [
                              Text(
                                selectedBroadcast.title,
                                style: broadcastTitleStyle,
                              ),
                              Divider(height: constraints.maxHeight * 0.0056),
                              Text(
                                selectedBroadcast.subTitle,
                                style: broadcastSubTitleStyle,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: constraints.maxHeight * 0.0405,
                          child: Row(
                            children: [
                              frequencyText,
                              VerticalDivider(
                                  width: constraints.maxWidth * 0.0312),
                              Expanded(child: wave),
                              VerticalDivider(
                                  width: constraints.maxWidth * 0.0312),
                              buildIcon(
                                  context: context,
                                  icon: "${pngIconsPath}heart.png"),
                            ],
                          ),
                        ),
                        Divider(height: constraints.maxHeight * 0.0813),

                        ///control (play - next...)
                        SizedBox(
                            height: constraints.maxHeight * 0.1015,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                buildIcon(
                                  context: context,
                                  icon: "${pngIconsPath}previous.png",
                                  height: constraints.maxHeight * 0.0304,
                                  width: constraints.maxHeight * 0.0304,
                                ),
                                VerticalDivider(
                                  width: constraints.maxWidth * 0.1493,
                                ),
                                buildIcon(
                                  context: context,
                                  icon: "${pngIconsPath}play.png",
                                  height: constraints.maxHeight * 0.1015,
                                  width: constraints.maxHeight * 0.1015,
                                ),
                                VerticalDivider(
                                  width: constraints.maxWidth * 0.1493,
                                ),
                                buildIcon(
                                  context: context,
                                  icon: "${pngIconsPath}next.png",
                                  height: constraints.maxHeight * 0.0304,
                                  width: constraints.maxHeight * 0.0304,
                                ),
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              );
            }));
  }
}
