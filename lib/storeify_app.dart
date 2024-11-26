import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/theming_cubit.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/utils/auto_route_observer.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_cubit.dart';

class StoreifyApp extends StatelessWidget {
  const StoreifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => MultiBlocProvider(
        providers: [
          BlocProvider<FavoritesCubit>(
            create: (_) => getIt.get<FavoritesCubit>(),
          ),
          BlocProvider<ThemingCubit>(
            create: (_) => getIt.get<ThemingCubit>(),
          ),
        ],
        child: BlocBuilder<ThemingCubit, ThemeData>(
          buildWhen: (previous, current) =>
              previous.brightness != current.brightness,
          builder: (context, themeState) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
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
      ),
    );
  }
}
