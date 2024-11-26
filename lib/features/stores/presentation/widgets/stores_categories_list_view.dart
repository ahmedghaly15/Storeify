import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/home/presentation/widgets/horizontal_separated_list_view.dart';
import 'package:store_ify/features/stores/data/models/store.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';

class StoreCategoriesListView extends StatelessWidget {
  const StoreCategoriesListView({super.key, required this.stores});

  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    return HorizontalSeparatedListView(
      padding: AppConstants.categoryPadding,
      separatorWidget: MySizedBox.width8,
      itemCount: stores.length,
      itemBuilder: (_, index) => BlocSelector<StoresCubit, StoresState, int>(
        selector: (state) => state.currentStoreIndex,
        builder: (context, currentStoreIndex) {
          final isStoreSelected = currentStoreIndex == index;
          return MainButton(
            isOutlined: true,
            backgroundColor: _backgroundColor(context, isStoreSelected),
            borderRadius: 34,
            borderColor: context.isDarkModeActive
                ? Colors.transparent
                : _lightModeSelectedStoreColor(isStoreSelected),
            onPressed: () {
              context.read<StoresCubit>().updateCurrentSelectedStore(index);
            },
            child: Text(
              stores[index].name,
              style: AppTextStyles.textStyle10Medium.copyWith(
                color: context.isDarkModeActive
                    ? AppColors.lightModeColor
                    : _lightModeSelectedStoreColor(isStoreSelected),
              ),
            ),
          );
        },
      ),
    );
  }

  Color _lightModeSelectedStoreColor(bool isStoreSelected) =>
      isStoreSelected ? AppColors.primaryColor : AppColors.blueColor;

  Color? _backgroundColor(BuildContext context, bool isStoreSelected) {
    return context.isDarkModeActive
        ? (isStoreSelected
            ? AppColors.primaryColor
            : AppColors.secondaryDarkColor)
        : AppColors.lightModeColor;
  }
}
