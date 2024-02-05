import 'package:flutter/material.dart';
import 'package:radio_station/core/functions/search.dart';

import '../../data/data_source/static/app_icons.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressSearchIcon,
      icon: Image.asset(AppIcons.search),
      visualDensity: VisualDensity.compact,
    );
  }
}
