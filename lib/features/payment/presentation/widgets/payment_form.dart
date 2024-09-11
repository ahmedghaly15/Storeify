import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/widgets/expiry_date_and_cvv_text_fields.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_custom_text_field.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_text_field_label.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorF6F6F6,
      padding: EdgeInsetsDirectional.only(
        top: 32.h,
        bottom: 32.h,
        start: 22.w,
        end: 46.w,
      ),
      child: Form(
        key: context.read<PaymentCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PaymentTextFieldLabel(labelKey: LangKeys.cardType),
            PaymentCustomTextField(
              enabled: false,
              hintTextKey: LangKeys.visaCard,
              controller: context.read<PaymentCubit>().cardTypeController,
              prefixIcon: Image.asset(
                AppAssets.imagesVisa,
                width: 32.w,
                height: 9.h,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.primaryColor,
                ),
              ),
              validate: (val) {
                return null;
              },
            ),
            MySizedBox.height19,
            const PaymentTextFieldLabel(labelKey: LangKeys.cardNumber),
            PaymentCustomTextField(
              hintTextKey: LangKeys.cardNumberHint,
              controller: context.read<PaymentCubit>().cardNumberController,
              keyboardType: TextInputType.number,
              autofillHints: const [AutofillHints.creditCardNumber],
              onEditingComplete: () => context.requestFocus(
                context.read<PaymentCubit>().cardHolderNumberFocusNode,
              ),
              validate: (val) {
                return null;
              },
            ),
            MySizedBox.height19,
            const PaymentTextFieldLabel(labelKey: LangKeys.cardHolderNumber),
            PaymentCustomTextField(
              hintTextKey: LangKeys.cardHolderNumber,
              controller:
                  context.read<PaymentCubit>().cardHolderNumberController,
              keyboardType: TextInputType.number,
              focusNode: context.read<PaymentCubit>().cardHolderNumberFocusNode,
              autofillHints: const [AutofillHints.creditCardNumber],
              onEditingComplete: () => context.requestFocus(
                context.read<PaymentCubit>().expiryDateFocusNode,
              ),
              validate: (val) {
                return null;
              },
            ),
            MySizedBox.height19,
            const ExpiryDateAndCvvTextFields(),
          ],
        ),
      ),
    );
  }
}
