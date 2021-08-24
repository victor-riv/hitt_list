import 'package:flutter/material.dart';

import 'features/home_screen/ui/home_screen_feature_widget.dart';

abstract class HiitListRouter {
  static const String initialRoute = '/';

  static Widget generate(String name) {
    switch (name) {
      case initialRoute:
        return HomeScreenFeatureWidget();

      default:
        return HomeScreenFeatureWidget();
    }
  }
}
