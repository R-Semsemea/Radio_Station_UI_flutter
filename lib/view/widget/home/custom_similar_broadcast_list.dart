import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/core/constant/app_scroll_physics.dart';

import '../../../controller/home_controller.dart';

class CustomSimilarBroadcastList extends StatelessWidget {
  const CustomSimilarBroadcastList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find<HomeController>();

    return LayoutBuilder(builder: (context, constraints) {
      //singlePopularBroadcastEntity height + divider height under it and whole width
      return ListView.separated(
        padding: EdgeInsets.only(
            left: constraints.maxWidth * 0.0509,
            right: constraints.maxWidth * 0.0509,
            bottom: constraints.maxHeight * 0.04),
        physics: AppScrollPhysics.bouncing,
        itemCount: controller.similarBroadcastEntities.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: constraints.maxHeight * 0.2933,
            decoration: BoxDecoration(
                color: AppColors.richBlack,
                borderRadius: BorderRadius.circular(12)),
            child: LayoutBuilder(builder: (context, constraints) {
              return Row(
                children: [
                  SizedBox(width: constraints.maxWidth * 0.0385),
                  Container(
                    height: constraints.maxHeight * 0.6666,
                    width: constraints.maxHeight * 0.6666,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(
                              controller.similarBroadcastEntities[index].photo),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(width: constraints.maxWidth * 0.03),
                  SizedBox(
                    width: constraints.maxWidth * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(controller.similarBroadcastEntities[index].title,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontFamily: "HK_Bold")),
                        Text(
                            controller.similarBroadcastEntities[index].subTitle,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    fontFamily: "HK_Medium",
                                    color: AppColors.blackCoral))
                      ],
                    ),
                  ),
                  InkWell(
                    child: Container(
                      width: constraints.maxWidth * 0.053,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/png/icons/more_horizontal.png"))),
                    ),
                  ),
                  //const Expanded(child: SizedBox())
                ],
              );
            }),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: constraints.maxHeight * 0.04,
          );
        },
      );
    });
  }
}
