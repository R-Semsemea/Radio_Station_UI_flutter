import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/controller/radio_stations_controller.dart';
import 'package:radio_station/core/constant/app_colors.dart';

class CustomListSelector extends StatelessWidget {
  final String name;
  final int pageIndex;
  final void Function() onPressListSelector;

  const CustomListSelector(
      {Key? key, required this.name, required this.pageIndex, required this.onPressListSelector})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    RadioStationsControllerImplement controller =
        Get.find<RadioStationsControllerImplement>();
    return InkWell(
        onTap: onPressListSelector,
        child: Text(
          name,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: controller.listSelectorIndex == pageIndex
                  ? AppColors.brinkPink //active color
                  : AppColors.blackCoral),  //an active color
        ));
  }
}
