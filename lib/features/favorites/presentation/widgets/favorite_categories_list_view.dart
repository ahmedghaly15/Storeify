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
        builder: (context, state) {
          return CustomOutlinedButton(
            foregroundColor: _activeColor(context, index),
            borderColor: _activeColor(context, index),
            onPressed: () =>
                _updateSelectedFavCategoryAndFetchItsData(context, index),
            child: Text(
              context.translate(AppConstants.favoritesCategoriesKeys[index]),
              style: AppTextStyles.textStyle10Medium.copyWith(
                color: _activeColor(context, index),
              ),
            ),
          );
        },
      ),
      separatorBuilder: (_, __) => MySizedBox.width8,
      itemCount: AppConstants.favoritesCategoriesKeys.length,
    );
  }

  void _updateSelectedFavCategoryAndFetchItsData(
      BuildContext context, int index) {
    context.read<FetchFavoritesCubit>().updateSelectedFavCategory(index);
    _fetchFavorites(context);
  }

  void _fetchFavorites(BuildContext context) {
    switch (context.read<FetchFavoritesCubit>().selectedFavCategory) {
      case 0:
        context.read<FetchFavoritesCubit>().fetchFavStores();
      case 1:
        context.read<FetchFavoritesCubit>().fetchFavProducts();
    }
  }

  Color _activeColor(BuildContext context, int index) {
    return _isActive(context, index)
        ? AppColors.primaryColor
        : AppColors.blueColor;
  }

  bool _isActive(BuildContext context, int index) {
    return context.read<FetchFavoritesCubit>().selectedFavCategory == index;
  }
}
