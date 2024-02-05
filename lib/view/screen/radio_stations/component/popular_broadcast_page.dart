import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/model/broadcast.dart';

Widget PopularBroadcastPage(BuildContext context, List<Broadcast> broadcasts) {
  return LayoutBuilder(builder: (context, constraints) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.0318),
      physics: const BouncingScrollPhysics(),
      itemCount: broadcasts.length,
      itemBuilder: (BuildContext context, int index) {
        //471
        return Container(
          height: constraints.maxHeight * 0.1719,
          decoration: BoxDecoration(
              color: const Color(0xff0B0B15),
              borderRadius: BorderRadius.circular(12)),
          child: LayoutBuilder(builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerticalDivider(
                  width: constraints.maxWidth * 0.0445,
                ),
                Container(
                  height: constraints.maxHeight * 0.6172,
                  width: constraints.maxHeight * 0.6172,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(broadcasts[index].photo),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5)),
                ),
                VerticalDivider(width: constraints.maxWidth * 0.0385),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(broadcasts[index].title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 10,
                            fontFamily: "HK_Bold",
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          )),
                      Text(broadcasts[index].subTitle,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 10,
                            fontFamily: "HK_Medium",
                            color: Color(0xff5C5E6F),
                            overflow: TextOverflow.ellipsis,
                          ))
                    ],
                  ),
                ),
                PopupMenuButton(
                    icon: Image.asset(
                      height: constraints.maxHeight * 0.0493,
                      width: constraints.maxWidth * 0.0534,
                      "assets/png/icons/more_horizontal.png",
                      color: const Color(0xff7B7B8B),
                    ),
                    color: Colors.white,
                    itemBuilder: (BuildContext context) => []),
                IconButton(
                    iconSize: 15,
                    onPressed: () => null,
                    icon: const Icon(
                      FontAwesomeIcons.solidHeart,
                      color: Color(0xff7B7B8B),
                    ))
              ],
            );
          }),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: constraints.maxHeight * 0.0254,
        );
      },
    );
  });
}
