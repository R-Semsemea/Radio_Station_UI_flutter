import 'package:flutter/material.dart';
import 'package:radio_station/model/broadcast.dart';
import 'package:radio_station/view/home/home_constants.dart';

Widget popularBroadcastEntities(
    BuildContext context, List<Broadcast> broadcastEntities) {
  return LayoutBuilder(builder: (context, constraints) {
    //singlePopularBroadcastEntity height + divider height under it and whole width
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.0509),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: broadcastEntities.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: constraints.maxHeight * 0.7045,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: constraints.maxHeight * 0.7045,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(broadcastEntities[index].photo),
                      fit: BoxFit.fill),
                ),
              ),
              Divider(
                height: constraints.maxHeight * 0.039,
              ),
              Text(broadcastEntities[index].title,
                  maxLines: 1, style: popularBroadcastEntityTitleStyle),
              Text(broadcastEntities[index].subTitle,
                  maxLines: 1, style: popularBroadcastEntitySubTitleStyle)
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return VerticalDivider(
          width: constraints.maxWidth * 0.04,
        );
      },
    );
  });
}
