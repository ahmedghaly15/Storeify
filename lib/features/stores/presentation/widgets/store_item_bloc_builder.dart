import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_outlined_button.dart';
import 'package:store_ify/features/stores/data/models/store.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/stores/stores_state.dart';

class StoreItemBlocBuilder extends StatelessWidget {
  const StoreItemBlocBuilder({
    super.key,
    required this.store,
  });

  final Store store;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoresCubit, StoresState>(
      buildWhen: (_, current) => current is UpdateCurrentStoreIndex,
      builder: (context, state) {
        int currentStoreIndex = context.read<StoresCubit>().currentStoreIndex;
        return CustomOutlinedButton(
          foregroundColor: _activeColor(currentStoreIndex),
          borderColor: _activeColor(currentStoreIndex),
          onPressed: () =>
              context.read<StoresCubit>().updateCurrentStoreIndex(store.id),
          child: Text(
            store.name,
            style: AppTextStyles.textStyle10Medium.copyWith(
              color: _activeColor(currentStoreIndex),
            ),
          ),
        );
      },
    );
  }

  bool _isActive(int currentStoreIndex) => currentStoreIndex == store.id;
  Color _activeColor(int currentStoreIndex) => _isActive(currentStoreIndex)
      ? AppColors.primaryColor
      : AppColors.blueColor;
}
