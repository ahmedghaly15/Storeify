import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_state.dart';

class PaymentMethodNextBlocConsumerButton extends StatelessWidget {
  const PaymentMethodNextBlocConsumerButton({super.key, required this.amount});

  final double amount;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentMethodCubit, PaymentMethodState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) => FadeInUp(
        from: 30.h,
        child: MainButton(
          child: circularIndicatorOrTextWidget(
            isLoading: state.status ==
                PaymentMethodStateStatus.choosePaymentMethodLoading,
            context: context,
            textKey:
                context.read<PaymentMethodCubit>().selectedPaymentMethod.name ==
                        LocaleKeys.creditCard
                    ? LocaleKeys.continueWord
                    : LocaleKeys.confirm,
          ),
          onPressed: () {
            context.pushRoute(PaymentRoute(amount: amount));
            // context.read<PaymentMethodCubit>().selectPaymentMethod();
          },
        ),
      ),
    );
  }

  void _listener(PaymentMethodState state, BuildContext context) {
    switch (state.status) {
      case PaymentMethodStateStatus.choosePaymentMethodSuccess:
        context.read<PaymentMethodCubit>().selectedPaymentMethod.name ==
                LocaleKeys.creditCard
            ? context.pushRoute(PaymentRoute(amount: amount))
            : _showToastAndGoHome(context);
        break;
      case PaymentMethodStateStatus.choosePaymentMethodError:
        context.showToast(state.error!);
        break;
      default:
        break;
    }
  }

  void _showToastAndGoHome(BuildContext context) {
    context.showToast(LocaleKeys.cashWillBeCollectedOnDelivery);
    context.router.popUntil((route) => route.settings.name == LayoutRoute.name);
  }

  bool _listenWhen(PaymentMethodStateStatus status) {
    return status == PaymentMethodStateStatus.choosePaymentMethodSuccess ||
        status == PaymentMethodStateStatus.choosePaymentMethodError;
  }

  bool _buildWhen(PaymentMethodStateStatus status) {
    return status == PaymentMethodStateStatus.choosePaymentMethodLoading ||
        status == PaymentMethodStateStatus.choosePaymentMethodError ||
        status == PaymentMethodStateStatus.choosePaymentMethodSuccess;
  }
}
