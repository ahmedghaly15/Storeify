import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/routes/app_router.dart';
import 'package:store_ify/config/themes/app_themes.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/features/home/data/cubit/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubit/clothes/clothes_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubit/food/food_cubit.dart';
import 'package:store_ify/service_locator.dart';
import 'package:store_ify/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:store_ify/features/categories/presentation/cubit/category_cubit.dart';

class StoreifyApp extends StatelessWidget {
  const StoreifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          title: AppStrings.appTitle,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
