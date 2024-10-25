import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/locale/app_localizations_setup.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_state.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/theming_cubit.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/utils/auto_route_observer.dart';

class StoreifyMaterialApp extends StatelessWidget {
  const StoreifyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(
      buildWhen: (previous, current) => previous.locale != current.locale,
      builder: (_, localeState) => BlocBuilder<ThemingCubit, ThemeData>(
        buildWhen: (previous, current) =>
            previous.brightness != current.brightness,
        builder: (context, themeState) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: localeState.locale,
          supportedLocales: AppLocalizationsSetup.supportedLocales,
          localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
          localeResolutionCallback:
              AppLocalizationsSetup.localeResolutionCallback,
          theme: themeState,
          title: AppStrings.appTitle,
          routerConfig: getIt.get<AppRouter>().config(
                navigatorObservers: () => [
                  AppRoutesObserver(),
                  AutoRouteObserver(),
                ],
              ),
        ),
      ),
    );
  }
}
