import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/list_outlined_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/horizontal_separated_list_view.dart';
import 'package:store_ify/core/models/store.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';

class StoreCategoriesListView extends StatelessWidget {
  const StoreCategoriesListView({super.key, required this.stores});

  final List<Store> stores;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppConstants.horizontalTapsListHeight,
      child: HorizontalSeparatedListView(
        padding: AppConstants.categoryPadding,
        separatorWidget: MySizedBox.width8,
        itemCount: stores.length,
        itemBuilder: (_, index) => BlocSelector<StoresCubit, StoresState, int>(
          selector: (state) => state.currentStoreIndex,
          builder: (context, currentStoreIndex) {
            final isStoreSelected = currentStoreIndex == index;
            return ListOutlinedButton(
              isActive: isStoreSelected,
              onPressed: () {
                context.read<StoresCubit>().updateCurrentSelectedStore(index);
              },
              text: stores[index].name,
            );
          },
        ),
      ),
    );
  }
}
