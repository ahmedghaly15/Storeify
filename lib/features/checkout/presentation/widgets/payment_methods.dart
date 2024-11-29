import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/checkout/data/models/payment_method.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_state.dart';
import 'package:store_ify/features/checkout/presentation/widgets/animated_payment_method_item.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 25.h,
        horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
      ),
      child: Wrap(
        children: List.generate(
          AppConstants.paymentMethods.length,
          (index) => BlocSelector<PaymentMethodCubit, PaymentMethodState,
              PaymentMethod>(
            selector: (state) => state.selectedPaymentMethod!,
            builder: (context, selectedPaymentMethod) => FadeInUp(
              from: 60,
              child: AnimatedPaymentMethodItem(
                isChosen: index == selectedPaymentMethod.id,
                paymentMethod: AppConstants.paymentMethods[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
