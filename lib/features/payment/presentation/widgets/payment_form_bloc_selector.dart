import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/payment_validator.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_state.dart';
import 'package:store_ify/features/payment/presentation/widgets/card_type_text_field_bloc_selector.dart';
import 'package:store_ify/features/payment/presentation/widgets/expiry_date_and_cvv_text_fields.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_custom_text_field.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_text_field_label.dart';

class PaymentFormBlocSelector extends StatelessWidget {
  const PaymentFormBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      buildWhen: (_, current) =>
          current.status ==
              PaymentStateStatus.retrieveCachedPaymentCardDetails ||
          current.status ==
              PaymentStateStatus.retrievedCachedPaymentCardDetails,
      builder: (context, state) {
        if (state.status ==
            PaymentStateStatus.retrieveCachedPaymentCardDetails) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: const LinearProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }
        return Container(
          color: context.isDarkModeActive
              ? AppColors.secondaryDarkColor
              : AppColors.colorF6F6F6,
          padding: EdgeInsetsDirectional.only(
            top: 32.h,
            bottom: 32.h,
            start: 22.w,
            end: 46.w,
          ),
          child: BlocSelector<PaymentCubit, PaymentState, AutovalidateMode>(
            selector: (state) => state.autovalidateMode,
            builder: (context, autovalidateMode) => Form(
              key: context.read<PaymentCubit>().formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PaymentTextFieldLabel(labelKey: LocaleKeys.cardType),
                  const CardTypeTextFieldBlocSelector(),
                  MySizedBox.height19,
                  const PaymentTextFieldLabel(labelKey: LocaleKeys.cardNumber),
                  PaymentCustomTextField(
                    hintTextKey: LocaleKeys.cardNumberHint,
                    controller:
                        context.read<PaymentCubit>().cardNumberController,
                    keyboardType: TextInputType.number,
                    autofillHints: const [AutofillHints.creditCardNumber],
                    onEditingComplete: () => context.requestFocus(
                      context.read<PaymentCubit>().cardHolderNumberFocusNode,
                    ),
                    // validate: (val) =>
                    //     PaymentValidator.validateCardNumberField(context, val),
                  ),
                  MySizedBox.height19,
                  const PaymentTextFieldLabel(
                    labelKey: LocaleKeys.cardHolderNumber,
                  ),
                  PaymentCustomTextField(
                    hintTextKey: LocaleKeys.cardHolderNumber,
                    controller:
                        context.read<PaymentCubit>().cardHolderNumberController,
                    keyboardType: TextInputType.number,
                    focusNode:
                        context.read<PaymentCubit>().cardHolderNumberFocusNode,
                    autofillHints: const [AutofillHints.creditCardNumber],
                    onEditingComplete: () => context.requestFocus(
                      context.read<PaymentCubit>().expiryDateFocusNode,
                    ),
                    validate: (val) =>
                        PaymentValidator.validateCardHolderNumberField(
                            context, val),
                  ),
                  MySizedBox.height19,
                  const ExpiryDateAndCvvTextFields(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
