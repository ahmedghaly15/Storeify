import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/home/presentation/widgets/horizontal_separated_list_view.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_cubit.dart';
import 'package:store_ify/features/stores/presentation/cubits/store_details/store_details_state.dart';

class StoreDetailsCategoriesListView extends StatelessWidget {
  const StoreDetailsCategoriesListView({super.key, required this.storeId});

  final int storeId;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.categoryMargin,
      height: 25.h,
      child: HorizontalSeparatedListView(
        padding: AppConstants.categoryPadding,
        itemBuilder: (_, index) {
          return BlocBuilder<StoreDetailsCubit, StoreDetailsState>(
            buildWhen: (_, current) => current is UpdateCurrentDetailsIndex,
            builder: (context, state) {
              return MainButton(
                isOutlined: true,
                backgroundColor: context.isDarkModeActive
                    ? AppColors.secondaryDarkColor
                    : AppColors.lightModeColor,
                onPressed: () => context
                    .read<StoreDetailsCubit>()
                    .updateCurrentStoreAndFetchItsData(
                      index: index,
                      storeId: storeId,
                    ),
                borderRadius: 34,
                borderColor: context
                    .read<StoreDetailsCubit>()
                    .selectedStoreDetailColor(context, index),
                child: Text(
                  context.tr(
                    AppConstants.storeDetailsCategoriesKeys[index],
                  ),
                  style: AppTextStyles.textStyle10Medium.copyWith(
                    color: context
                        .read<StoreDetailsCubit>()
                        .storeDetailTextColor(context, index),
                  ),
                ),
              );
            },
          );
        },
        separatorWidget: MySizedBox.width8,
        itemCount: AppConstants.storeDetailsCategoriesKeys.length,
      ),
    );
  }
}
