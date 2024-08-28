import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_outlined_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/stores/data/models/fetch_stores_response.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';

class StoresListView extends StatelessWidget {
  const StoresListView({super.key, required this.fetchStoresResponse});

  final FetchStoresResponse fetchStoresResponse;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: AppConstants.categoryPadding,
      itemBuilder: (_, index) => BlocBuilder<StoresCubit, StoresState>(
        buildWhen: (_, current) => current is UpdateCurrentSelectedStore,
        builder: (context, state) {
          int currentStoreIndex =
              context.read<StoresCubit>().currentSelectedStore;
          return CustomOutlinedButton(
            foregroundColor: _activeColor(
                currentStoreIndex, fetchStoresResponse.stores[index].id),
            borderColor: _activeColor(
                currentStoreIndex, fetchStoresResponse.stores[index].id),
            onPressed: () {
              context.read<StoresCubit>().updateCurrentSelectedStore(
                  fetchStoresResponse.stores[index].id);
              context.read<StoresCubit>().updateCurrentStoreIndex(index);
            },
            child: Text(
              fetchStoresResponse.stores[index].name,
              style: AppTextStyles.textStyle10Medium.copyWith(
                color: _activeColor(
                    currentStoreIndex, fetchStoresResponse.stores[index].id),
              ),
            ),
          );
        },
      ),
      separatorBuilder: (_, __) => MySizedBox.width8,
      itemCount: fetchStoresResponse.stores.length,
    );
  }

  bool _isActive(int currentStoreIndex, int storeId) =>
      currentStoreIndex == storeId;
  Color _activeColor(int currentStoreIndex, int storeId) =>
      _isActive(currentStoreIndex, storeId)
          ? AppColors.primaryColor
          : AppColors.blueColor;
}
