import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/cart/presentation/widgets/control_cart_product_quantity.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';

class ProductQuantityController extends StatelessWidget {
  const ProductQuantityController({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        ControlCartProductQuantity(
          onTap: () => context.read<GeneralCubit>().decreaseProductQuantity(),
          icon: Icons.remove,
          borderRadius: BorderRadiusDirectional.horizontal(
            start: Radius.circular(15.r),
          ),
        ),
        Container(
          padding: EdgeInsets.all(6.h),
          decoration: BoxDecoration(
            color: context.isDarkModeActive
                ? AppColors.secondaryDarkColor
                : Colors.white,
            border: Border.all(
              color: AppColors.primaryColor,
              width: 1.w,
            ),
          ),
          child: BlocSelector<GeneralCubit, GeneralState, int>(
            selector: (state) => state.productQuantity,
            builder: (context, productQuantity) => Text(
              '$productQuantity',
              style: AppTextStyles.textStyle8Regular.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        ControlCartProductQuantity(
          onTap: () => context.read<GeneralCubit>().increaseProductQuantity(),
          icon: Icons.add,
          borderRadius: BorderRadiusDirectional.horizontal(
            end: Radius.circular(15.r),
          ),
        ),
      ],
    );
  }
}
