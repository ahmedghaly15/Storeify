import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/themes/theming_cubit.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/favorites_cubit.dart';
import 'package:store_ify/storeify_material_app.dart';

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
          BlocProvider<ThemingCubit>(
            create: (_) => getIt.get<ThemingCubit>(),
          ),
        ],
        child: const StoreifyMaterialApp(),
      ),
    );
  }
}
