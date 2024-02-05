import 'package:flutter/material.dart';

import '../../../../data/model/broadcast.dart';
import '../../../../global_constants.dart';

Widget favouriteBroadcastEntities(
    BuildContext context, List<Broadcast> favouriteBroadcasts) {
  return LayoutBuilder(builder: (context, constraints) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.0506),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: favouriteBroadcasts.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: constraints.maxHeight,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  image: DecorationImage(
                      image: AssetImage(favouriteBroadcasts[index].photo),
                      fit: BoxFit.fill),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5, right: 5),
                alignment: Alignment.topRight,
                child: buildIcon(
                    context: context,
                    icon: "assets/png/icons/favourite.png",
                    height: constraints.maxWidth * 0.056,
                    width: constraints.maxWidth * 0.056),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return VerticalDivider(
          width: constraints.maxWidth * 0.048,
        );
      },
    );
  });
}
