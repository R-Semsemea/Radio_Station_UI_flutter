import 'package:flutter/material.dart';
import 'package:radio_station/view/widget/podcasts/custom_background_picture.dart';

import '../../../core/constant/app_colors.dart';
import '../../../data/model/broadcast.dart';
import '../../widget/podcasts/custom_control.dart';
import '../../widget/podcasts/custom_foreground_picture.dart';
import '../../widget/podcasts/custom_visualizer.dart';

class Podcasts extends StatelessWidget {
  final Broadcast selectedBroadcast;

  const Podcasts({super.key, required this.selectedBroadcast});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          SizedBox(
              height: constraints.maxHeight * 0.4739,
              child: CustomBackgroundPodcastPicture(
                picture: selectedBroadcast.background,
              )),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.0506),
            child: Column(
              children: [
                SizedBox(height: constraints.maxHeight * 0.2468),
                SizedBox(
                  height: constraints.maxHeight * 0.2679,
                  width: constraints.maxHeight * 0.2679,
                  child: CustomForegroundPodcastPicture(
                    picture: selectedBroadcast.photo,
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.0352),
                SizedBox(
                  height: constraints.maxHeight * 0.1248,
                  child: Column(
                    children: [
                      Text(
                        selectedBroadcast.title,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontSize: 22),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.0056),
                      Text(
                        selectedBroadcast.subTitle,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: AppColors.lightRhythm2),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.0405,
                  child: const CustomVisualizer(),
                ),
                const Expanded(child: CustomControl())
              ],
            ),
          )
        ],
      );
    });
  }
}
