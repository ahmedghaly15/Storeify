import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';

class PaymentCustomTextField extends StatelessWidget {
  const PaymentCustomTextField({
    super.key,
    this.hintTextKey,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validate,
    this.onChanged,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.onSubmit,
    this.autofillHints,
    this.focusNode,
    this.onEditingComplete,
    this.textCapitalization = TextCapitalization.none,
    this.enabled,
  });

  final TextInputType keyboardType;
  final String? hintTextKey;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String submittedText)? onSubmit;
  final List<String>? autofillHints;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final TextCapitalization textCapitalization;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      enabled: enabled,
      margin: EdgeInsets.zero,
      enabledBorder: _buildOutlineInputBorder(),
      focusedBorder: _buildOutlineInputBorder(),
      border: _buildOutlineInputBorder(),
      errorBorder: _buildOutlineInputBorder(),
      focusedErrorBorder: _buildOutlineInputBorder(),
      disabledBorder: _buildOutlineInputBorder(),
      hintTextKey: hintTextKey,
      hintStyle: AppTextStyles.textStyle12Regular.copyWith(
        color: AppColors.greyColor,
      ),
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      textCapitalization: textCapitalization,
      controller: controller,
      keyboardType: keyboardType,
      validate: validate,
      onChanged: onChanged,
      obscureText: obscureText,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      autofillHints: autofillHints,
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: AppColors.lightModeColor, width: 0),
      );
}
