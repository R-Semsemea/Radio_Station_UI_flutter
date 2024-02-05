import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controller/events_controller.dart';
import '../../../global_constants.dart';
import 'component/event_entities.dart';
import 'events_constants.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EventsControllerImplement>(
        init: EventsControllerImplement(),

        ///full height - bottom nav height && full width
        builder: (controller) => LayoutBuilder(builder: (context, constraints) {
              return Column(
                children: [
                  Divider(
                    height: constraints.maxHeight * 0.0620,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.0586),
                    height: constraints.maxHeight * 0.0959,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(child: eventsLabel),
                        SizedBox(
                            height: constraints.maxHeight * 0.0221,
                            width: constraints.maxWidth * 0.0459,
                            child: InkWell(
                                onTap: () => null,
                                child: Image.asset(
                                    "${pngIconsPath}feather_map.png"))),
                        VerticalDivider(width: constraints.maxWidth * 0.0824),
                        searchIcon(context),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.0533),
                    height: constraints.maxHeight * 0.0451,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        popularEventsLabel,
                        InkWell(child: seeAllLabel)
                      ],
                    ),
                  ),
                  SizedBox(
                      height: constraints.maxHeight * 0.2566,
                      child: eventEntities(context, controller.Events)),
                  Container(
                    height: constraints.maxHeight * 0.1974,
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.0533),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/png/event_background.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0x00000000),
                                    Color(0x9e000000)
                                  ],
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: constraints.maxHeight * 0.4642,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: constraints.maxWidth * 0.0860),
                                child: photoTitle,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: constraints.maxWidth * 0.0652),
                                child: photoSubTitle,
                              ),
                            ],
                          )
                        ],
                      );
                    }),
                  ),
                  Divider(height: constraints.maxHeight * 0.0296),
                  Container(
                    height: constraints.maxHeight * 0.0578,
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.0506),
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.eventsCategory.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () => controller.onPressCategory(index),
                          child: Text(
                            controller.eventsCategory[index],
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "HK_Bold",
                                color: controller.selectedCategory == index
                                    ? const Color(0xffFB6580)
                                    : const Color(0xff5C5E6F)),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return VerticalDivider(
                          width: constraints.maxWidth * 0.072,
                        );
                      },
                    ),
                  ),
                  Expanded(
                      child: eventEntities(
                          context, controller.Events.reversed.toList()))
                ],
              );
            }));
  }
}
