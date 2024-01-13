import 'package:flutter/material.dart';
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
      currentIndex: cubit.currentIndex,
      onTap: (value) {
        cubit.changeBottomNav(
          params: ChangeIndexParams(
            index: value,
            context: context,
          ),
        );
      },
      items: cubit.bottomNavItems(),
    );
  }
}
