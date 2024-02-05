import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/core/constant/app_scroll_physics.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/app_colors.dart';

class CustomPopularBroadcastList extends StatelessWidget {
  const CustomPopularBroadcastList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find<HomeController>();
    return LayoutBuilder(builder: (context, constraints) {
      //singlePopularBroadcastEntity height + divider height under it and whole width
      return ListView.separated(
        physics: AppScrollPhysics.bouncing,
        padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.05),
        scrollDirection: Axis.horizontal,
        itemCount: controller.broadcastEntities.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: constraints.maxHeight * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: constraints.maxHeight * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage(
                            controller.broadcastEntities[index].photo),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                ),
                Text(controller.broadcastEntities[index].title,
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontFamily: "HK_Bold")),
                Text(controller.broadcastEntities[index].subTitle,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontFamily: "HK_Medium", color: AppColors.blackCoral))
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: constraints.maxWidth * 0.04,
          );
        },
      );
    });
  }
}
