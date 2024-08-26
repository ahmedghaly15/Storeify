import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_outlined_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';

class StoreDetailsCategoriesListView extends StatelessWidget {
  const StoreDetailsCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.categoryMargin,
      height: 25.h,
      child: ListView.separated(
        itemBuilder: (_, index) {
          int currentStoreDetail =
              context.read<StoreDetailsCubit>().currentSubDetailsIndex;
          return CustomOutlinedButton(
            onPressed: () => context
                .read<StoreDetailsCubit>()
                .updateCurrentStoreDetailIndex(index),
            foregroundColor: _activeColor(currentStoreDetail, index),
            borderColor: _activeColor(currentStoreDetail, index),
            child: Text(
              context.translate(AppConstants.storeDetailsCategoriesKeys[index]),
              style: AppTextStyles.textStyle10Medium.copyWith(
                color: _activeColor(currentStoreDetail, index),
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => MySizedBox.width8,
        itemCount: AppConstants.storeDetailsCategoriesKeys.length,
      ),
    );
  }

  Color _activeColor(int currentStoreDetail, int index) =>
      currentStoreDetail == index
          ? AppColors.primaryColor
          : AppColors.blueColor;
}
