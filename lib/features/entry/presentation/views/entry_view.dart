import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/core/helpers/cache_helper.dart';
import 'package:store_ify/core/helpers/helper.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/service_locator.dart';

class EntryView extends StatefulWidget {
  const EntryView({super.key});

  @override
  State<EntryView> createState() => _EntryViewState();
}

class _EntryViewState extends State<EntryView> {
  void _goToNext() {
    Helper.uId = serviceLocator
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedUserId);

    bool? onBoarding = serviceLocator
        .get<CacheHelper>()
        .getBoolData(key: AppStrings.cachedOnboarding);

    if (onBoarding != null) {
      if (Helper.uId != null) {
        context.navigateAndReplacement(
          newRoute: Routes.storeifyLayoutViewRoute,
        );
      } else {
        context.navigateAndReplacement(newRoute: Routes.loginViewRoute);
      }
    } else {
      context.navigateAndReplacement(newRoute: Routes.onBoardingViewRoute);
    }
  }

  void _setSystemUIOverlayStyle() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    final double bottomPadding = View.of(context).viewPadding.bottom;

    // Set the color based on the presence of the system navigation bar
    final Color? systemNavigationBarColor =
        bottomPadding > 0 ? null : Colors.transparent;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: systemNavigationBarColor,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  void initState() {
    // To ensure that navigation calls are performed after the widget tree has been built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _goToNext();
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _setSystemUIOverlayStyle();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(),
    );
  }
}
