import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';

class CheckoutNextBlocConsumerButton extends StatelessWidget {
  const CheckoutNextBlocConsumerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckoutCubit, CheckoutState>(
      listenWhen: (_, current) =>
          current is CheckoutSuccess || current is CheckoutError,
      listener: (context, state) {
        state.whenOrNull(
          checkoutSuccess: (_) {
            // TODO: push to payment method route
          },
          checkoutError: (errorKey) => CustomToast.showToast(
            context: context,
            messageKey: errorKey,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is CheckoutSuccess ||
          current is CheckoutError ||
          current is CheckoutLoading,
      builder: (context, state) {
        return MainButton(
          margin: EdgeInsets.symmetric(
            horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
            vertical: 40.h,
          ),
          onPressed: () => context.read<CheckoutCubit>().checkout(),
          child: circularIndicatorOrTextWidget(
            condition: state is CheckoutLoading,
            context: context,
            textKey: LangKeys.next,
          ),
        );
      },
    );
  }
}
