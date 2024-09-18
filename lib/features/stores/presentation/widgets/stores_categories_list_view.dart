import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_outlined_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/stores/data/models/store.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';

class StoreCategoriesListView extends StatelessWidget {
  const StoreCategoriesListView({super.key, required this.stores});

  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: AppConstants.physics,
      padding: AppConstants.categoryPadding,
      itemBuilder: (_, index) => BlocBuilder<StoresCubit, StoresState>(
        buildWhen: (_, current) => current is UpdateCurrentSelectedStore,
        builder: (context, state) => CustomOutlinedButton(
          backgroundColor: _backgroundColor(context, index),
          foregroundColor: context.read<StoresCubit>().activeStoreColor(
                stores[index].id,
              ),
          borderColor: context.isDarkModeActive
              ? Colors.transparent
              : context.read<StoresCubit>().activeStoreColor(
                    stores[index].id,
                  ),
          onPressed: () {
            context.read<StoresCubit>().updateSelectedStoreAndItsIndex(
                  storeId: stores[index].id,
                  index: index,
                );
          },
          child: Text(
            stores[index].name,
            style: AppTextStyles.textStyle10Medium.copyWith(
              color: context.isDarkModeActive
                  ? Colors.white
                  : context.read<StoresCubit>().activeStoreColor(
                        stores[index].id,
                      ),
            ),
          ),
        ),
      ),
      separatorBuilder: (_, __) => MySizedBox.width8,
      itemCount: stores.length,
    );
  }

  Color? _backgroundColor(BuildContext context, int storeId) {
    return context.isDarkModeActive
        ? _darkModeBackgroundColor(context, storeId)
        : Colors.white;
  }

  Color? _darkModeBackgroundColor(BuildContext context, int storeId) {
    return context.read<StoresCubit>().isStoreActive(storeId)
        ? AppColors.primaryColor
        : AppColors.secondaryDarkColor;
  }
}
