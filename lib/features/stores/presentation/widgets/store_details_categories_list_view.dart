import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/list_outlined_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/horizontal_separated_list_view.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';

class StoreDetailsCategoriesListView extends StatelessWidget {
  const StoreDetailsCategoriesListView({super.key, required this.storeId});

  final int storeId;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.categoryMargin,
      height: AppConstants.horizontalTapsListHeight,
      child: HorizontalSeparatedListView(
        padding: AppConstants.categoryPadding,
        itemBuilder: (_, index) =>
            BlocSelector<StoreDetailsCubit, StoreDetailsState, int>(
          selector: (state) => state.selectedDetailIndex,
          builder: (context, selectedDetailIndex) {
            final isStoreDetailSelected = selectedDetailIndex == index;
            return ListOutlinedButton(
              isActive: isStoreDetailSelected,
              onPressed: () {
                if (!isStoreDetailSelected) {
                  context.read<StoreDetailsCubit>().selectedStoreDetail(
                        index,
                      );
                  context.read<StoreDetailsCubit>().fetchStoreData(
                        selectedDetailIndex,
                      );
                }
              },
              textKey: AppConstants.storeDetailsCategoriesKeys[index],
            );
          },
        ),
        separatorWidget: MySizedBox.width8,
        itemCount: AppConstants.storeDetailsCategoriesKeys.length,
      ),
    );
  }
}
