import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/auto_route_observer.dart';
import 'package:store_ify/core/locale/app_localizations_setup.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_state.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/theming_cubit.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/dependency_injection.dart';

class StoreifyMaterialApp extends StatelessWidget {
  const StoreifyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemingCubit, ThemeData>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, themeState) => BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previous, current) => previous != current,
        builder: (_, state) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: state.locale,
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
