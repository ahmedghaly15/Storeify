import 'package:flutter/material.dart';
import 'package:store_ify/features/checkout/presentation/widgets/check_circle.dart';
import 'package:store_ify/features/checkout/presentation/widgets/container_contains_dot.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_checkout_divider.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_progress_circle.dart';

class PaymentMethodProcessProgress extends StatelessWidget {
  const PaymentMethodProcessProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomProgressCircle(),
        CustomCheckoutDivider(),
        CheckCircle(),
        CustomCheckoutDivider(),
        ContainerContainsDot(),
      ],
    );
  }
}
