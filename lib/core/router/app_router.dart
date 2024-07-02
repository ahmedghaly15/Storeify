import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/router/routes.dart';
import 'package:store_ify/core/utils/app_utils.dart';

part 'app_router.gr.dart';
part 'app_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => appRoutes;
}

@RoutePage(name: Routes.authRoute)
class Auth extends AutoRouter {
  const Auth({super.key});
}

@RoutePage(name: Routes.bottomNavBarRoute)
class BottomNavBar extends AutoRouter {
  const BottomNavBar({super.key});
}
