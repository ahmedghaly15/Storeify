import 'package:flutter/material.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/checkout/presentation/widgets/check_circle.dart';
import 'package:store_ify/features/checkout/presentation/widgets/container_contains_dot.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_checkout_divider.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_checkout_progress_circle.dart';

class PaymentMethodProcessProgress extends StatelessWidget {
  const PaymentMethodProcessProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCheckoutProgressCircle(
          color: AppColors.primaryColor,
          borderColor: AppColors.primaryColor,
          borderWidth: 0,
        ),
        CustomCheckoutDivider(),
        CheckCircle(),
        CustomCheckoutDivider(),
        ContainerContainsDot(),
      ],
    );
  }
}
