import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/features/cart/presentation/widgets/control_cart_product_quantity.dart';

class QuantityAndPrice extends StatelessWidget {
  const QuantityAndPrice({
    super.key,
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ControlCartProductQuantity(
              onTap: () {},
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
              child: Text(
                '1',
                style: AppTextStyles.textStyle8Regular.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            ControlCartProductQuantity(
              onTap: () {},
              icon: Icons.add,
              borderRadius: BorderRadiusDirectional.horizontal(
                end: Radius.circular(15.r),
              ),
            ),
          ],
        ),
        Text(
          '$price LE',
          style: AppTextStyles.textStyle16Medium.copyWith(
            color: AppColors.color2A94F4,
          ),
        ),
      ],
    );
  }
}
