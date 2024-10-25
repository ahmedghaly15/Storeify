import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/features/layout/presentation/widgets/custom_bottom_nav_bar.dart';

@RoutePage()
class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const HomeRouteBody(),
        StoresRouteBody(),
        CartRouteBody(),
        FavoritesRouteBody()
      ],
      bottomNavigationBuilder: (_, tabsRouter) => CustomBottomNavBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
      ),
    );
  }
}
