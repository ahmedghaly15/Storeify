import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:store_ify/features/layout/presentation/widgets/custom_bottom_nav_bar.dart';

class StoreIfyLayout extends StatelessWidget {
  const StoreIfyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        final LayoutCubit cubit = BlocProvider.of<LayoutCubit>(context);
        return Scaffold(
          body: cubit.views()[cubit.currentIndex],
          bottomNavigationBar: CustomBottomNavBar(cubit: cubit),
        );
      },
    );
  }
}
