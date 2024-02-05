import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/controller/radio_stations_controller.dart';
import 'package:radio_station/core/constant/app_scroll_physics.dart';
import 'package:radio_station/data/data_source/static/app_icons.dart';

import '../../../core/constant/app_colors.dart';

class CustomRadioGenreList extends StatelessWidget {
  const CustomRadioGenreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RadioStationsControllerImplement controller =
        Get.find<RadioStationsControllerImplement>();
    return LayoutBuilder(builder: (context, constraints) {
      return ListView.separated(
        padding: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.0424),
        physics: AppScrollPhysics.bouncing,
        itemCount: controller.genres.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: constraints.maxHeight * 0.1082,
            decoration: BoxDecoration(
                color: AppColors.richBlack,
                borderRadius: BorderRadius.circular(6)),
            child: LayoutBuilder(builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: constraints.maxWidth * 0.0504),
                  Expanded(
                      child: Text(
                    controller.genres[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 13),
                  )),
                  Transform.scale(
                    scale: 0.6,
                    child: IconButton(
                        iconSize: 5,
                        onPressed: () {},
                        icon: Image.asset(AppIcons.arrow)),
                  ),
                  const SizedBox(),
                ],
              );
            }),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: constraints.maxHeight * 0.0233,
          );
        },
      );
    });
  }
}
