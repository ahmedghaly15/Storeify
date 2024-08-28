import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/auto_route_observer.dart';
import 'package:store_ify/core/locale/app_localizations_setup.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_state.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_themes.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites_cubit.dart';

class StoreifyApp extends StatelessWidget {
  const StoreifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider<LocaleCubit>(
            create: (_) => getIt.get<LocaleCubit>()..getSavedLang(),
          ),
          BlocProvider<FavoritesCubit>(
            create: (_) => getIt.get<FavoritesCubit>(),
          ),
        ],
        child: BlocBuilder<LocaleCubit, LocaleState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              locale: state.locale,
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              theme: AppThemes.lightTheme,
              title: AppStrings.appTitle,
              routerConfig: getIt.get<AppRouter>().config(
                    navigatorObservers: () => [
                      AppRoutesObserver(),
                      AutoRouteObserver(),
                    ],
                  ),
            );
          },
        ),
      ),
    );
  }
}
