import 'package:flutter/material.dart';
import 'package:radio_station/core/constant/app_colors.dart';
import 'package:radio_station/core/constant/screen_dimensions.dart';
import 'package:radio_station/data/data_source/static/app_images.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: const DecorationImage(
              image: AssetImage(AppImages.banner), fit: BoxFit.cover)),
      padding: EdgeInsets.symmetric(horizontal: ScreenDimension.width * 0.048),
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy your day with RadioApp",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(fontSize: 8),
                ),
                Text(
                  "Tune your radio now",
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
            Container(
              height: constraints.maxHeight * 0.27,
              width: constraints.maxWidth * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                gradient: const LinearGradient(
                    colors: [AppColors.brinkPink, AppColors.electricPink]),
              ),
              child: Center(
                child: Text(
                  "Tune Now",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
