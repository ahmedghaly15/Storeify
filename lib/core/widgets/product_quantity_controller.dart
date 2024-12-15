import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/cart/presentation/widgets/control_cart_product_quantity.dart';

class ProductQuantityController extends StatelessWidget {
  const ProductQuantityController({
    super.key,
    required this.productQuantityWidget,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.increaseOnPressed,
    required this.decreaseOnPressed,
  });

  final MainAxisAlignment mainAxisAlignment;
  final Widget productQuantityWidget;
  final VoidCallback increaseOnPressed, decreaseOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        ControlCartProductQuantity(
          onTap: decreaseOnPressed,
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
          child: productQuantityWidget,
        ),
        ControlCartProductQuantity(
          onTap: increaseOnPressed,
          icon: Icons.add,
          borderRadius: BorderRadiusDirectional.horizontal(
            end: Radius.circular(15.r),
          ),
        ),
      ],
    );
  }
}
