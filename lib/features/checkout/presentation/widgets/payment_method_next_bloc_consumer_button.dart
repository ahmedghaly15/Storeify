import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_state.dart';

class PaymentMethodNextBlocConsumerButton extends StatelessWidget {
  const PaymentMethodNextBlocConsumerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentMethodCubit, PaymentMethodState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) => FadeInUp(
        from: 30.h,
        child: MainButton(
          margin: EdgeInsets.symmetric(
            horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
          ),
          child: circularIndicatorOrTextWidget(
            isLoading: state.status ==
                PaymentMethodStateStatus.choosePaymentMethodLoading,
            context: context,
            textKey: state.selectedPaymentMethod!.name == LocaleKeys.creditCard
                ? LocaleKeys.continueWord
                : LocaleKeys.next,
          ),
          onPressed: () {
            context.pushRoute(const PaymentRoute());
            // context
            //   .read<PaymentMethodCubit>()
            //   .choosePaymentMethod(1 // TODO: remember to change this
            //       );
          },
        ),
      ),
    );
  }

  void _listener(PaymentMethodState state, BuildContext context) {
    switch (state.status) {
      case PaymentMethodStateStatus.choosePaymentMethodSuccess:
        // TODO: if selectedPaymentMethod's name is creditCard push to payment view
        // TODO: else show a dialog with OK like in UI
        break;
      case PaymentMethodStateStatus.choosePaymentMethodError:
        context.showToast(state.error!);
        break;
      default:
        break;
    }
  }

  bool _listenWhen(PaymentMethodStateStatus status) {
    return status == PaymentMethodStateStatus.choosePaymentMethodSuccess ||
        status == PaymentMethodStateStatus.choosePaymentMethodError;
  }

  bool _buildWhen(PaymentMethodStateStatus status) {
    return status == PaymentMethodStateStatus.choosePaymentMethodLoading ||
        status == PaymentMethodStateStatus.choosePaymentMethodError ||
        status == PaymentMethodStateStatus.choosePaymentMethodSuccess ||
        status == PaymentMethodStateStatus.selectingPaymentMethod;
  }
}
