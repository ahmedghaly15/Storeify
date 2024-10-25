import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/themes/app_themes.dart';
import 'package:store_ify/core/utils/auto_route_observer.dart';
import 'package:store_ify/core/locale/app_localizations_setup.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_state.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';

class StoreifyMaterialApp extends StatelessWidget {
  const StoreifyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocaleCubit, LocaleState>(
      listenWhen: (_, current) =>
          current.status == LocaleStateStatus.changeLocaleLocally ||
          current.status == LocaleStateStatus.changeApiLocaleFailure,
      listener: (context, state) => _localeCubitListener(state, context),
      buildWhen: (previous, current) => previous.locale != current.locale,
      builder: (_, localeState) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        locale: localeState.locale,
        supportedLocales: AppLocalizationsSetup.supportedLocales,
        localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
        localeResolutionCallback:
            AppLocalizationsSetup.localeResolutionCallback,
        theme: AppThemes.lightMode,
        title: AppStrings.appTitle,
        routerConfig: getIt.get<AppRouter>().config(
              navigatorObservers: () => [
                AppRoutesObserver(),
                AutoRouteObserver(),
              ],
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
