import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_station/view/widget/custom_search_icon.dart';

import '../../controller/home_controller.dart';
import '../widget/home/custom_background_album_cover.dart';
import '../widget/home/custom_popular_broadcast_list.dart';
import '../widget/home/custom_similar_broadcast_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          SizedBox(
            height: constraints.maxHeight * 0.48,
            width: double.infinity,
            child: const CustomBackgroundAlbumCover(),
          ),
          Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.3709,
                child: Align(
                  alignment: const Alignment(-0.85, 1.0),
                  child: Text(
                    "Popular Broadcast",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontFamily: "HK_Bold"),
                  ),
                ),
              ),
              SizedBox(height: constraints.maxHeight * 0.0183),
              SizedBox(
                  height: constraints.maxHeight * 0.2482,
                  width: double.infinity,
                  child: const CustomPopularBroadcastList()),
              SizedBox(
                height: constraints.maxHeight * 0.0451,
                child: Align(
                    alignment: const Alignment(-0.85, -1.0),
                    child: Text(
                      "Similar Broadcast",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontFamily: "HK_Bold"),
                    )),
              ),
              const Expanded(child: CustomSimilarBroadcastList())
            ],
          ),
          const Align(
            alignment: Alignment(0.9, -0.9),
            child: SearchIcon(),
          )
        ],
      );
    });
  }
}
