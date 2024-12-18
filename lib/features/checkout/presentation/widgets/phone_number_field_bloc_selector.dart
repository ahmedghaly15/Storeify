import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/text_form_validator.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';

class PhoneNumberFieldBlocSelector extends StatelessWidget {
  const PhoneNumberFieldBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CheckoutCubit, CheckoutState, String>(
      selector: (state) => state.countryCode,
      builder: (context, countryCode) => IntlPhoneField(
        initialCountryCode: countryCode,
        keyboardType: TextInputType.phone,
        pickerDialogStyle: PickerDialogStyle(
          backgroundColor: context.isDarkModeActive
              ? AppColors.secondaryDarkColor
              : AppColors.lightModeColor,
        ),
        decoration: InputDecoration(
          enabledBorder: AppConstants.textFieldOutlinedBorder,
          focusedBorder: AppConstants.textFieldOutlinedBorder,
          errorBorder: AppConstants.textFieldOutlinedBorder,
          focusedErrorBorder: AppConstants.textFieldOutlinedBorder,
          border: AppConstants.textFieldOutlinedBorder,
          filled: true,
          fillColor: context.isDarkModeActive
              ? Colors.transparent
              : AppColors.lightModeColor,
        ),
        onChanged: (phone) =>
            context.read<CheckoutCubit>().updatePhoneNumber(phone),
        validator: (value) => TextFormValidator.validateField(
          context,
          value?.number,
        ),
      ),
    );
  }
}
