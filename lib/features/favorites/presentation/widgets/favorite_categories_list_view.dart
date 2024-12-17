import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/list_outlined_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/fetch_favorites/fetch_favorites_state.dart';
import 'package:store_ify/core/widgets/horizontal_separated_list_view.dart';

class FavoriteCategoriesListView extends StatelessWidget {
  const FavoriteCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppConstants.horizontalTapsListHeight,
      child: HorizontalSeparatedListView(
        padding: AppConstants.categoryPadding,
        itemBuilder: (_, index) =>
            BlocSelector<FetchFavoritesCubit, FetchFavoritesState, int>(
          selector: (state) => state.selectedFavCategory,
          builder: (context, selectedFavCategory) {
            final isSelected = selectedFavCategory == index;
            return ListOutlinedButton(
              isActive: isSelected,
              onPressed: () async {
                if (!isSelected) {
                  context
                      .read<FetchFavoritesCubit>()
                      .updateSelectedFavCategory(index);
                  context
                      .read<FetchFavoritesCubit>()
                      .fetchSelectedCategoryFavs();
                }
              },
              textKey: AppConstants.favoritesCategoriesKeys[index],
            );
          },
        ),
        separatorWidget: MySizedBox.width8,
        itemCount: AppConstants.favoritesCategoriesKeys.length,
      ),
    );
  }
}
