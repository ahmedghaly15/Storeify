import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/cancel_outlined_button.dart';
import 'package:store_ify/core/widgets/custom_adaptive_dialog.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/payment/data/datasource/payment_local_datasource.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class PayBlocConsumerButton extends StatelessWidget {
  const PayBlocConsumerButton({super.key, required this.amount});

  final double amount;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listenWhen: (_, current) => _listenOrBuildWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _listenOrBuildWhen(current.status),
      builder: (context, state) => MainButton(
        onPressed: () => context
            .read<PaymentCubit>()
            .payAndValidateForm(orderId: 1, amount: amount),
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
        _showConfirmationDialog(context);
        break;
      default:
        break;
    }
  }

  void _showConfirmationDialog(BuildContext context) {
    showAdaptiveDialog(
      context: context,
      barrierLabel: '',
      barrierDismissible: false,
      builder: (_) => BlocProvider.value(
        value: getIt.get<PaymentCubit>(),
        child: CustomAdaptiveDialog(
          contentText: LocaleKeys.sureToConfirmPayment,
          actions: [
            const CancelOutlinedButton(),
            MySizedBox.height10,
            MainButton(
              textKey: LocaleKeys.confirm,
              margin: EdgeInsets.zero,
              onPressed: () async {
                await _cacheCardDetails(context);
                context.router.pushAndPopUntil(
                  const PaymentSuccessfullyRoute(),
                  predicate: (route) => route.settings.name == LayoutRoute.name,
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Future<void> _cacheCardDetails(BuildContext context) async {
    final paymentCubit = context.read<PaymentCubit>();
    final cachedCardDetails =
        await PaymentLocalDatasource.retrieveCachedCardDetails();
    if (paymentCubit.checkboxValue &&
        paymentCubit.paymentCardDetails != cachedCardDetails) {
      await PaymentLocalDatasource.deleteCachedCardDetails();
      await PaymentLocalDatasource.cacheCardDetails(
        paymentCubit.paymentCardDetails!,
      );
    } else if (!paymentCubit.checkboxValue) {
      await PaymentLocalDatasource.deleteCachedCardDetails();
    }
  }

  bool _listenOrBuildWhen(PaymentStateStatus status) {
    return status == PaymentStateStatus.payLoading ||
        status == PaymentStateStatus.paySuccess ||
        status == PaymentStateStatus.payError;
  }
}
