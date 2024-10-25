import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/features/search/presentation/widgets/custom_search_text_field.dart';

class CustomHeroSearchTextField extends StatelessWidget {
  const CustomHeroSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: LangKeys.search,
      flightShuttleBuilder: (
        BuildContext context,
        Animation<double> animation,
        HeroFlightDirection flightDirection,
        BuildContext fromHeroContext,
        BuildContext toHeroContext,
      ) {
        if (flightDirection == HeroFlightDirection.push) {
          return ScaleTransition(
            scale: animation.drive(Tween(begin: 0.0, end: 1.0)),
            child: toHeroContext.widget,
          );
        } else {
          return ScaleTransition(
            scale: animation.drive(Tween(begin: 1.0, end: 0.0)),
            child: toHeroContext.widget,
          );
        }
      },
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () => context.pushRoute(const SearchRoute()),
          child: const CustomSearchTextField(enabled: false),
        ),
      ),
    );
  }
}
