import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:store_ify/features/layout/data/entities/change_index_params.dart';
import 'package:store_ify/features/layout/presentation/cubit/layout_cubit.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.cubit,
  });

  final LayoutCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20.h,
      selectedItemColor: AppColors.primaryColor,
      unselectedIconTheme: const IconThemeData(color: AppColors.iconsColor),
      unselectedLabelStyle: AppTextStyles.textStyle8Regular.copyWith(
        fontWeight: FontWeight.bold,
      ),
      currentIndex: cubit.currentIndex,
      onTap: (value) {
        cubit.changeBottomNav(
          params: ChangeIndexParams(
            index: value,
            context: context,
          ),
        );
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: cubit.bottomNavItems(),
    );
  }
}
