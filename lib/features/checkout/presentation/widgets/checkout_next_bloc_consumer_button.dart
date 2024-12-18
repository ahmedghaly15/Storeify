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
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';

class CheckoutNextBlocConsumerButton extends StatelessWidget {
  const CheckoutNextBlocConsumerButton({super.key, required this.amount});

  final double amount;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckoutCubit, CheckoutState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) => MainButton(
        margin: EdgeInsets.symmetric(
          horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
          vertical: 40.h,
        ),
        onPressed: () {
          context.pushRoute(PaymentMethodRoute(amount: amount));
          // if (context.read<CheckoutCubit>().phoneNumber.isNotEmpty) {
          //   context.read<CheckoutCubit>().checkoutAndValidateForm();
          // } else {
          //   context.showToast(LocaleKeys.phoneNumberCantBeEmpty);
          // }
        },
        child: circularIndicatorOrTextWidget(
          isLoading: state.status == CheckoutStateStatus.checkoutLoading,
          context: context,
          textKey: LocaleKeys.next,
        ),
      ),
    );
  }

  void _listener(CheckoutState state, BuildContext context) {
    switch (state.status) {
      case CheckoutStateStatus.checkoutSuccess:
        context.pushRoute(PaymentMethodRoute(amount: amount));
        break;
      case CheckoutStateStatus.checkoutError:
        context.showToast(state.error!);
        break;
      default:
        break;
    }
  }

  bool _listenWhen(CheckoutStateStatus status) {
    return status == CheckoutStateStatus.checkoutSuccess ||
        status == CheckoutStateStatus.checkoutError;
  }

  bool _buildWhen(CheckoutStateStatus status) {
    return status == CheckoutStateStatus.checkoutSuccess ||
        status == CheckoutStateStatus.checkoutError ||
        status == CheckoutStateStatus.checkoutLoading;
  }
}
