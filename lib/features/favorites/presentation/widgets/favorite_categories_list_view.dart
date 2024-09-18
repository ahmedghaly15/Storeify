import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_outlined_button.dart';
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
          BlocBuilder<FetchFavoritesCubit, FetchFavoritesState>(
        buildWhen: (_, current) => current is UpdateSelectedFavCategory,
        builder: (context, state) => CustomOutlinedButton(
          backgroundColor: _backgroundColor(context, index),
          foregroundColor: context
              .read<FetchFavoritesCubit>()
              .selectedFavCategoryColor(index),
          borderColor: context.isDarkModeActive
              ? Colors.transparent
              : context
                  .read<FetchFavoritesCubit>()
                  .selectedFavCategoryColor(index),
          onPressed: () {
            context
                .read<FetchFavoritesCubit>()
                .updateSelectedFavCategoryAndFetchItsData(index);
          },
          child: Text(
            context.translate(AppConstants.favoritesCategoriesKeys[index]),
            style: AppTextStyles.textStyle10Medium.copyWith(
              color: context.isDarkModeActive
                  ? Colors.white
                  : context
                      .read<FetchFavoritesCubit>()
                      .selectedFavCategoryColor(index),
            ),
          ),
        ),
      ),
      separatorBuilder: (_, __) => MySizedBox.width8,
      itemCount: AppConstants.favoritesCategoriesKeys.length,
    );
  }

  Color? _backgroundColor(BuildContext context, int index) {
    return context.isDarkModeActive
        ? _darkModelBackground(context, index)
        : Colors.white;
  }

  Color? _darkModelBackground(BuildContext context, int index) {
    return (context.read<FetchFavoritesCubit>().isActiveFavCategory(index)
        ? AppColors.primaryColor
        : AppColors.secondaryDarkColor);
  }
}
