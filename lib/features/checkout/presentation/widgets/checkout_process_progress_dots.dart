import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/checkout/presentation/widgets/check_circle.dart';
import 'package:store_ify/features/checkout/presentation/widgets/container_contains_dot.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_checkout_divider.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_progress_circle.dart';

class CheckoutProcessProgressDots extends StatelessWidget {
  const CheckoutProcessProgressDots({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CheckCircle(),
        CustomCheckoutDivider(),
        ContainerContainsDot(),
        CustomCheckoutDivider(color: AppColors.colorD9D9D9),
        CustomProgressCircle(isColoredPrimary: false),
      ],
    );
  }
}
