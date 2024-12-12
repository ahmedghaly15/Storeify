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
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';

class PayBlocConsumerButton extends StatelessWidget {
  const PayBlocConsumerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listenWhen: (_, current) => _listenOrBuildWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current.status),
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
          isLoading: state.status == PaymentStateStatus.payLoading,
          context: context,
          textKey: LocaleKeys.payNow,
        ),
      ),
    );
  }

  void _listener(PaymentState state, BuildContext context) {
    switch (state.status) {
      case PaymentStateStatus.payLoading:
        context.unfocusKeyboard();
        break;
      case PaymentStateStatus.payError:
        context.showToast(state.error!);
        break;
      case PaymentStateStatus.paySuccess:
        // TODO: navigate to payment successful screen
        // TODO: cache card details if the checkBoxValue is true
        break;
      default:
        break;
    }
  }

  bool _listenOrBuildWhen(PaymentStateStatus status) {
    return status == PaymentStateStatus.payLoading ||
        status == PaymentStateStatus.paySuccess ||
        status == PaymentStateStatus.payError;
  }
}
