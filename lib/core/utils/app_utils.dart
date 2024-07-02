import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppUtils {
  AppUtils._();

  static Widget Function(
    BuildContext,
    Animation<double>,
    Animation<double>,
    Widget,
  )? get transitionsBuilder => TransitionsBuilders.slideLeft;

  static const int transitionDuration = 400;
}
