import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/checkout/presentation/widgets/check_circle.dart';
import 'package:store_ify/features/checkout/presentation/widgets/container_contains_dot.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_checkout_divider.dart';

class CheckoutProcessProgressDots extends StatelessWidget {
  const CheckoutProcessProgressDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CheckCircle(),
        const CustomCheckoutDivider(),
        const ContainerContainsDot(),
        const CustomCheckoutDivider(color: AppColors.colorD9D9D9),
        Container(
          height: 25.87.h,
          width: 25.87.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: AppColors.colorD9D9D9,
              width: 1.08.w,
            ),
          ),
        ),
      ],
    );
  }
}
