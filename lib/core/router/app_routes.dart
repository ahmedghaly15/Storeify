part of 'app_router.dart';

List<AutoRoute> get appRoutes => [];

CustomRoute _buildCustomRoute({
  bool initial = false,
  required PageInfo<dynamic> page,
  List<AutoRoute>? children,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
      transitionsBuilder,
  int? durationInMilliseconds,
}) {
  return CustomRoute(
    initial: initial,
    page: page,
    transitionsBuilder: transitionsBuilder ?? AppUtils.transitionsBuilder,
    durationInMilliseconds:
        durationInMilliseconds ?? AppUtils.transitionDuration,
    children: children,
  );
}
