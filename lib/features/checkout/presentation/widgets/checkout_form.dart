import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/core/helpers/payment_validator.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_time_picker.dart';
import 'package:store_ify/features/checkout/presentation/widgets/phone_number_field_bloc_selector.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class CheckoutForm extends StatelessWidget {
  const CheckoutForm({super.key});

  @override
  Widget build(BuildContext context) {
    final checkoutCubit = context.read<CheckoutCubit>();
    return FadeInDown(
      from: 50.h,
      child: Form(
        key: context.read<CheckoutCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFieldLabel(labelKey: LocaleKeys.username),
            CustomTextField(
              controller: checkoutCubit.usernameController,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.none,
              hintTextKey: LocaleKeys.enterYourUsername,
              autofillHints: const <String>[AutofillHints.name],
              validate: (String? value) =>
                  AuthValidator.validateNameField(context, value: value),
            ),
            MySizedBox.height10,
            const TextFieldLabel(labelKey: LocaleKeys.yourAddress),
            CustomTextField(
              controller: checkoutCubit.addressController,
              keyboardType: TextInputType.streetAddress,
              textCapitalization: TextCapitalization.sentences,
              hintTextKey: LocaleKeys.enterYourAddress,
              autofillHints: const <String>[AutofillHints.addressCity],
              validate: (String? value) =>
                  PaymentValidator.validateField(context, value),
            ),
            MySizedBox.height10,
            const TextFieldLabel(labelKey: LocaleKeys.phone),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              child: const PhoneNumberFieldBlocSelector(),
            ),
            MySizedBox.height10,
            const TextFieldLabel(labelKey: LocaleKeys.date),
            InkWell(
              onTap: () => _pickDate(context),
              child: CustomTextField(
                enabled: false,
                controller: checkoutCubit.dateController,
                keyboardType: TextInputType.datetime,
                textCapitalization: TextCapitalization.none,
                hintTextKey: LocaleKeys.dateHint,
                autofillHints: const <String>[AutofillHints.birthday],
                validate: (String? value) =>
                    PaymentValidator.validateField(context, value),
                suffixIcon: const Icon(
                  Icons.calendar_month,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            MySizedBox.height10,
            const TextFieldLabel(labelKey: LocaleKeys.time),
            const CustomTimePicker(),
          ],
        ),
      ),
    );
  }

  Future<void> _pickDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );
    if (pickedDate != null) {
      context.read<CheckoutCubit>().onDatePicked(pickedDate);
    }
  }
}
