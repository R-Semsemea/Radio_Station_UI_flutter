import 'package:flutter/cupertino.dart';

class AppScrollPhysics {
  static const ScrollPhysics bouncing =
      BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast);
  static const ScrollPhysics never=NeverScrollableScrollPhysics();
}
