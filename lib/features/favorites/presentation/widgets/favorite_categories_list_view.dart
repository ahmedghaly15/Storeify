import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_state.dart';

class FavoriteCategoriesListView extends StatelessWidget {
  const FavoriteCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: AppConstants.categoryPadding,
      itemBuilder: (_, index) =>
          BlocSelector<FetchFavoritesCubit, FetchFavoritesState, int>(
        selector: (state) => state.selectedFavCategory,
        builder: (context, selectedFavCategory) {
          final isSelected = selectedFavCategory == index;
          return MainButton(
            isOutlined: true,
            backgroundColor: context.isDarkModeActive
                ? (isSelected
                    ? AppColors.primaryColor
                    : AppColors.secondaryDarkColor)
                : AppColors.lightModeColor,
            borderRadius: 34,
            borderColor: context.isDarkModeActive
                ? Colors.transparent
                : _lightModeSelectedColor(isSelected),
            onPressed: () async {
              context
                  .read<FetchFavoritesCubit>()
                  .updateSelectedFavCategory(index);
              await context
                  .read<FetchFavoritesCubit>()
                  .fetchSelectedCategoryFavs();
            },
            child: Text(
              context.tr(AppConstants.favoritesCategoriesKeys[index]),
              style: AppTextStyles.textStyle10Medium.copyWith(
                color: context.isDarkModeActive
                    ? AppColors.lightModeColor
                    : _lightModeSelectedColor(isSelected),
              ),
            ),
          );
        },
      ),
      separatorBuilder: (_, __) => MySizedBox.width8,
      itemCount: AppConstants.favoritesCategoriesKeys.length,
    );
  }

  Color _lightModeSelectedColor(bool isSelected) =>
      (isSelected ? AppColors.primaryColor : AppColors.blueColor);
}
