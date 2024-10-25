import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';

class PayBlocConsumerButton extends StatelessWidget {
  const PayBlocConsumerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listenWhen: (_, current) => current is PayError || current is PaySuccess,
      listener: (context, state) {
        state.whenOrNull(
          payError: (errorKey) => CustomToast.showToast(
            context: context,
            messageKey: errorKey,
            state: CustomToastState.error,
          ),
          paySuccess: () {
            // TODO: navigate to payment successful screen
            // TODO: cache card details if the checkBoxValue is true
          },
        );
      },
      buildWhen: (_, current) =>
          current is PayLoading || current is PaySuccess || current is PayError,
      builder: (context, state) => MainButton(
        onPressed: () {
          context.pushRoute(const PaymentSuccessfullyRoute());
          // context.read<PaymentCubit>().payAndValidateForm(context, 1);
        },
        margin: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
        ),
        child: circularIndicatorOrTextWidget(
          isLoading: state is PayLoading,
          context: context,
          textKey: LangKeys.payNow,
        ),
      ),
    );
  }
}
