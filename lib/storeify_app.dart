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
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/dependency_injection.dart';
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
          BlocProvider<LocaleCubit>(
            create: (_) => getIt.get<LocaleCubit>()..getSavedLang(),
          ),
          BlocProvider<FavoritesCubit>(
            create: (_) => getIt.get<FavoritesCubit>(),
          ),
        ],
        child: BlocConsumer<LocaleCubit, LocaleState>(
          listenWhen: (_, current) =>
              current.status == LocaleStateStatus.changeLocaleLocally ||
              current.status == LocaleStateStatus.changeApiLocaleFailure,
          listener: (context, state) => _localeCubitListener(state, context),
          buildWhen: (previous, current) => previous.locale != current.locale,
          builder: (_, localeState) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            locale: localeState.locale,
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
          ),
        ),
      ),
    );
  }

  void _localeCubitListener(LocaleState<dynamic> state, BuildContext context) {
    switch (state.status) {
      case LocaleStateStatus.changeLocaleLocally:
        context.read<LocaleCubit>().changeApiLang(state.locale.languageCode);
        break;

      case LocaleStateStatus.changeApiLocaleFailure:
        CustomToast.showToast(
          context: context,
          messageKey: state.error ?? '',
          state: CustomToastState.error,
        );
        break;
    }
  }
}
