import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_custom_text_field.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_text_field_label.dart';

class ExpiryDateAndCvvTextFields extends StatelessWidget {
  const ExpiryDateAndCvvTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const PaymentTextFieldLabel(
                labelKey: LangKeys.expiryDate,
              ),
              PaymentCustomTextField(
                hintTextKey: LangKeys.expiryDateHint,
                controller: context.read<PaymentCubit>().expiryDateController,
                keyboardType: TextInputType.datetime,
                focusNode: context.read<PaymentCubit>().expiryDateFocusNode,
                autofillHints: const [AutofillHints.creditCardExpirationDate],
                onEditingComplete: () => context.requestFocus(
                  context.read<PaymentCubit>().cvvFocusNode,
                ),
                validate: (val) {
                  return null;
                },
              ),
            ],
          ),
        ),
        MySizedBox.width19,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const PaymentTextFieldLabel(labelKey: LangKeys.cvv),
              PaymentCustomTextField(
                hintTextKey: LangKeys.cvv,
                controller: context.read<PaymentCubit>().cvvController,
                keyboardType: TextInputType.number,
                focusNode: context.read<PaymentCubit>().cvvFocusNode,
                validate: (val) {
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
