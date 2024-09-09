import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_state.dart';
import 'package:store_ify/features/checkout/presentation/widgets/animated_payment_method_item.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        AppConstants.paymentMethods.length,
        (index) => BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
          buildWhen: (_, current) => current is UpdateSelectedPaymentMethod,
          builder: (context, state) => AnimatedPaymentMethodItem(
            isChosen: index ==
                context.read<PaymentMethodCubit>().selectedPaymentMethod.id,
            paymentMethod: AppConstants.paymentMethods[index],
          ),
        ),
      ),
    );
  }
}
