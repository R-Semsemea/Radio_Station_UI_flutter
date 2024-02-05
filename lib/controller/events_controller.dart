import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:radio_station/global_constants.dart';

import '../data/model/event.dart';

abstract class EventsController extends GetxController {}


class EventsControllerImplement extends GetxController {
  int selectedCategory = 0;
  List<String> eventsCategory = [
    "All",
    "Art",
    "Concerts",
    "Events",
    "Festivals",
    "KidsFamily"
  ];
  List<Event> Events = [
    Event(
        eventPhoto: "assets/png/events/1.png",
        eventName: "Cosmetallic",
        eventShortDescription: eventShortDescription,
        eventDescription: eventDescription,
        isPopular: true),
    Event(
        eventPhoto: "assets/png/events/2.png",
        eventName: "Coupe de Troupe",
        eventShortDescription: eventShortDescription,
        eventDescription: eventDescription,
        isPopular: true),
    Event(
        eventPhoto: "assets/png/events/3.png",
        eventName: "Deep Blue See",
        eventShortDescription: eventShortDescription,
        eventDescription: eventDescription,
        isPopular: true),
    Event(
        eventPhoto: "assets/png/events/4.png",
        eventName: "Cubicle Wars",
        eventShortDescription: eventShortDescription,
        eventDescription: eventDescription),
    Event(
        eventPhoto: "assets/png/events/5.png",
        eventName: "Dance Contagion",
        eventShortDescription: eventShortDescription,
        eventDescription: eventDescription),
    Event(
        eventPhoto: "assets/png/events/6.png",
        eventName: "Dognost",
        eventShortDescription: eventShortDescription,
        eventDescription: eventDescription),
  ];

  void onPressCategory(int index) {
    selectedCategory = index;
    update();
  }
}
