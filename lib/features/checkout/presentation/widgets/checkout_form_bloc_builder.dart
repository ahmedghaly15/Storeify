import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:store_ify/core/helpers/validator.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_circular_progress_indicator.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_state.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_next_bloc_consumer_button.dart';
import 'package:store_ify/features/checkout/presentation/widgets/custom_time_picker.dart';

class CheckoutFormBlocBuilder extends StatelessWidget {
  const CheckoutFormBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckoutCubit, CheckoutState>(
      buildWhen: (_, current) => current is GetCurrentCountryCode,
      builder: (context, state) => state.maybeWhen(
        getCurrentCountryCode: (countryCode) => Form(
          key: context.read<CheckoutCubit>().formKey,
          child: FadeInDown(
            from: 50.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextFieldLabel(labelKey: LangKeys.username),
                CustomTextField(
                  controller: context.read<CheckoutCubit>().usernameController,
                  keyboardType: TextInputType.name,
                  textCapitalization: TextCapitalization.none,
                  hintTextKey: LangKeys.enterYourUsername,
                  autofillHints: const <String>[AutofillHints.name],
                  validate: (String? value) =>
                      Validator.validateNameField(value: value),
                ),
                MySizedBox.height10,
                const TextFieldLabel(labelKey: LangKeys.yourAddress),
                CustomTextField(
                  controller: context.read<CheckoutCubit>().addressController,
                  keyboardType: TextInputType.streetAddress,
                  textCapitalization: TextCapitalization.sentences,
                  hintTextKey: LangKeys.enterYourAddress,
                  autofillHints: const <String>[AutofillHints.addressCity],
                  validate: (String? value) => Validator.validateField(value),
                ),
                MySizedBox.height10,
                const TextFieldLabel(labelKey: LangKeys.phone),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.w),
                  child: IntlPhoneField(
                    initialCountryCode: countryCode,
                    keyboardType: TextInputType.phone,
                    pickerDialogStyle: PickerDialogStyle(
                      backgroundColor: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: AppConstants.textFieldOutlinedBorder,
                      focusedBorder: AppConstants.textFieldOutlinedBorder,
                      errorBorder: AppConstants.textFieldOutlinedBorder,
                      focusedErrorBorder: AppConstants.textFieldOutlinedBorder,
                      border: AppConstants.textFieldOutlinedBorder,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    onChanged: (phoneNumber) => context
                        .read<CheckoutCubit>()
                        .onCountryChanged(
                            '${phoneNumber.countryCode}${phoneNumber.number}'),
                  ),
                ),
                MySizedBox.height10,
                const TextFieldLabel(labelKey: LangKeys.date),
                InkWell(
                  onTap: () => context.read<CheckoutCubit>().pickDate(context),
                  child: CustomTextField(
                    enabled: false,
                    controller: context.read<CheckoutCubit>().dateController,
                    keyboardType: TextInputType.datetime,
                    textCapitalization: TextCapitalization.none,
                    hintTextKey: LangKeys.dateHint,
                    autofillHints: const <String>[AutofillHints.birthday],
                    validate: (String? value) => Validator.validateField(value),
                    suffixIcon: const Icon(
                      Icons.calendar_month,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                MySizedBox.height10,
                const TextFieldLabel(labelKey: LangKeys.time),
                const CustomTimePicker(),
                const CheckoutNextBlocConsumerButton(),
              ],
            ),
          ),
        ),
        orElse: () => const Center(
          child: CustomCircularProgressIndicator(),
        ),
      ),
    );
  }
}
