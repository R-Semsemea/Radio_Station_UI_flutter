import 'package:flutter/material.dart';

import '../../../../data/model/broadcast.dart';
import '../radio_stations_constants.dart';

Widget RadioGenrePage(BuildContext context, List<Broadcast> broadcasts) {
  return LayoutBuilder(builder: (context, constraints) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.0424),
      physics: const BouncingScrollPhysics(),
      itemCount: genres.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: constraints.maxHeight * 0.1082,
          decoration: BoxDecoration(
              color: const Color(0xff0B0B15),
              borderRadius: BorderRadius.circular(6)),
          child: LayoutBuilder(builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerticalDivider(width: constraints.maxWidth * 0.0504),
                Expanded(
                    child: Text(
                  genres[index],
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                )),
                Transform.scale(
                  scale: 0.6,
                  child: IconButton(
                      iconSize: 5,
                      onPressed: () => null,
                      icon: Image.asset("assets/png/icons/arrow.png")),
                ),
                const VerticalDivider(),
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
