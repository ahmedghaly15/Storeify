import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_themes.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/utils/auto_route_observer.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';

class StoreifyApp extends StatelessWidget {
  const StoreifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => BlocProvider<GeneralCubit>.value(
        value: getIt.get<GeneralCubit>(),
        child: BlocSelector<GeneralCubit, GeneralState, ThemeData>(
          selector: (state) => state.theme!,
          builder: (context, theme) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: (isFirstLaunch && isDeviceDarkModeActive)
                ? AppThemes.darkMode
                : theme,
            themeMode:
                theme == AppThemes.lightMode ? ThemeMode.light : ThemeMode.dark,
            title: AppStrings.appTitle,
            routerConfig: getIt.get<AppRouter>().config(
                  navigatorObservers: () => [
                    AppRoutesObserver(),
                    AutoRouteObserver(),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
