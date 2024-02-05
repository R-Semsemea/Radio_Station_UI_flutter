import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:radio_station/controller/radio_stations_controller.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/core/constant/app_scroll_physics.dart';

class CustomPopularBroadcastList extends StatelessWidget {
  const CustomPopularBroadcastList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RadioStationsControllerImplement controller =
        Get.find<RadioStationsControllerImplement>();
    return LayoutBuilder(builder: (context, constraints) {
      return ListView.separated(
        padding: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.0318),
        physics: AppScrollPhysics.bouncing,
        itemCount: controller.similarBroadcastObjects.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: constraints.maxHeight * 0.1719,
            decoration: BoxDecoration(
                color: AppColors.richBlack,
                borderRadius: BorderRadius.circular(12)),
            child: LayoutBuilder(builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.0445,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.6172,
                    width: constraints.maxHeight * 0.6172,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(controller
                                .similarBroadcastObjects[index].photo),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  SizedBox(width: constraints.maxWidth * 0.0385),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(controller.similarBroadcastObjects[index].title,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontFamily: "HK_Bold")),
                        Text(controller.similarBroadcastObjects[index].subTitle,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontFamily: "HK_Medium"))
                      ],
                    ),
                  ),
                  PopupMenuButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        color: AppColors.lightRhythm2,
                      ),
                      itemBuilder: (BuildContext context) => []),
                  IconButton(
                      iconSize: 15,
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.solidHeart,
                        color: AppColors.lightRhythm2,
                      ))
                ],
              );
            }),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: constraints.maxHeight * 0.0254,
          );
        },
      );
    });
  }
}
