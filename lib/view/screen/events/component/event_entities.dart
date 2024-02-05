
import 'package:flutter/material.dart';

import '../../../../data/model/event.dart';
import 'event_entities_constants.dart';

Widget eventEntities(BuildContext context, List<Event> events) {
  return LayoutBuilder(builder: (context, constraints) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.0506),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: events.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: constraints.maxHeight * 0.6813,
              width: constraints.maxHeight * 0.6813,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(events[index].eventPhoto),
                    fit: BoxFit.fill),
              ),
            ),
            Divider(
              height: constraints.maxHeight * 0.0384,
            ),
            Text(
              events[index].eventName,
              style: eventTitleStyle,
            ),
            Text(
              events[index].eventShortDescription,
              style: eventSubTitleStyle,
            ),
          ],
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
