import 'package:flutter/material.dart';
import 'package:radio_station/core/constant/app_scroll_physics.dart';

import '../../../core/constant/app_colors.dart';
import '../../../data/data_source/static/bottom_navigation_bar_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final void Function(int index) onPress;
  final int currentIndex;

  const CustomBottomNavigationBar(
      {Key? key, required this.onPress, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = constraints.maxWidth;
      double height = constraints.maxHeight;
      return Container(
          decoration: const BoxDecoration(
            color: AppColors.darkJungleGreen,
            boxShadow: [
              BoxShadow(
                color: AppColors.chineseBlack,
                offset: Offset(0.0, -9.0), //(x,y)
                blurRadius: 15.0,
              ),
            ],
          ),
          child: ListView.builder(
              physics: AppScrollPhysics.never,
              itemExtent: width / bottomNavIcons.length,
              itemCount: bottomNavIcons.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => InkWell(
                    onTap: () => onPress(index),
                    child: Column(
                      children: [
                        SizedBox(
                          width: width * 0.064,
                          child: Image.asset(
                            "assets/png/bottom_navigation_icons/indicator.png",
                            color: currentIndex == index
                                ? AppColors.brinkPink
                                : AppColors.darkJungleGreen,
                          ),
                        ),
                        Divider(height: height * 0.1941),
                        SizedBox(
                          width: width * 0.064,
                          height: height * 0.2331,
                          child: Image.asset(
                            bottomNavIcons[index],
                            color: currentIndex == index
                                ? AppColors.brinkPink
                                : AppColors.blackCoral,
                          ),
                        ),
                        Divider(height: height * 0.0796),
                        SizedBox(
                          width: width * 0.1368,
                          child: Text(
                            bottomNavNames[index],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                    color: currentIndex == index
                                        ? AppColors.brinkPink
                                        : AppColors.blackCoral),
                          ),
                        )
                      ],
                    ),
                  )));
    });
  }
}
