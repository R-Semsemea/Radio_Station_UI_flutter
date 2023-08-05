import 'package:flutter/material.dart';
import 'package:radio_station/model/broadcast.dart';
import 'package:radio_station/view/home/home_constants.dart';

Widget similarBroadcastEntities(
    BuildContext context, List<Broadcast> similarBroadcastEntities) {
  return LayoutBuilder(builder: (context, constraints) {
    //singlePopularBroadcastEntity height + divider height under it and whole width
    return ListView.separated(
      padding: EdgeInsets.only(
          left: constraints.maxWidth * 0.0509,
          right: constraints.maxWidth * 0.0509,
          bottom: constraints.maxHeight * 0.04),
      physics: const BouncingScrollPhysics(),
      itemCount: similarBroadcastEntities.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: double.infinity,
          height: constraints.maxHeight * 0.2933,
          decoration: BoxDecoration(
              color: const Color(0xff0B0B15),
              borderRadius: BorderRadius.circular(12)),
          child: LayoutBuilder(builder: (context, constraints) {
            return Row(
              children: [
                VerticalDivider(width: constraints.maxWidth * 0.0385),
                Container(
                  height: constraints.maxHeight * 0.6666,
                  width: constraints.maxHeight * 0.6666,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image:
                            AssetImage(similarBroadcastEntities[index].photo),
                        fit: BoxFit.fill),
                  ),
                ),
                VerticalDivider(width: constraints.maxWidth * 0.0296),
                SizedBox(
                  width: constraints.maxWidth * 0.7032,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(similarBroadcastEntities[index].title,
                          maxLines: 1, style: similarBroadcastEntityTitleStyle),
                      Text(similarBroadcastEntities[index].subTitle,
                          maxLines: 1,
                          style: similarBroadcastEntitySubTitleStyle)
                    ],
                  ),
                ),
                InkWell(
                  child: Container(
                    width: constraints.maxWidth * 0.0534,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/png/icons/more_horizontal.png"))),
                  ),
                ),
                const Expanded(child: SizedBox())
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
