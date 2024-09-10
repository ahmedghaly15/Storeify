import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_state.dart';

class PaymentMethodNextBlocConsumerButton extends StatelessWidget {
  const PaymentMethodNextBlocConsumerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentMethodCubit, PaymentMethodState>(
      listenWhen: (_, current) =>
          current is ChoosePaymentMethodSuccess ||
          current is ChoosePaymentMethodError,
      listener: (context, state) {
        state.whenOrNull(
          choosePaymentMethodSuccess: () {
            // TODO: push to payment view
          },
          choosePaymentMethodError: (errorKey) => CustomToast.showToast(
            context: context,
            messageKey: errorKey,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is ChoosePaymentMethodLoading ||
          current is ChoosePaymentMethodError ||
          current is ChoosePaymentMethodSuccess,
      builder: (context, state) => MainButton(
        margin: EdgeInsets.symmetric(
          horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
        ),
        child: circularIndicatorOrTextWidget(
          condition: state is ChoosePaymentMethodLoading,
          context: context,
          textKey: LangKeys.next,
        ),
        onPressed: () => context
            .read<PaymentMethodCubit>()
            .choosePaymentMethod(1 // TODO: remember to change this
                ),
      ),
    );
  }
}
