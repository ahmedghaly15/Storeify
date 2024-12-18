import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
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
    this.contentPadding = EdgeInsets.zero,
    this.textAlign = TextAlign.center,
    this.enabledBorder,
    this.focusedBorder,
    this.enabled,
    this.margin,
    this.border,
    this.errorBorder,
    this.focusedErrorBorder,
    this.hintStyle,
    this.disabledBorder,
    this.autofocus = false,
  });

  final TextInputType keyboardType;
  final String? hintTextKey;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function(String submittedText)? onSubmit;
  final List<String>? autofillHints;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final TextCapitalization textCapitalization;
  final EdgeInsetsGeometry? contentPadding;
  final TextAlign textAlign;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;
  final bool? enabled;
  final EdgeInsetsGeometry? margin;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(horizontal: 24.w),
      child: TextFormField(
        autofocus: autofocus,
        enabled: enabled,
        selectionHeightStyle: BoxHeightStyle.strut,
        obscureText: obscureText ?? false,
        autofillHints: autofillHints,
        validator: validate,
        onChanged: onChanged,
        onFieldSubmitted: onSubmit,
        onEditingComplete: onEditingComplete,
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        cursorColor:
            context.isDarkModeActive ? Colors.white : AppColors.darkColor,
        cursorErrorColor:
            context.isDarkModeActive ? Colors.white : AppColors.darkColor,
        textCapitalization: textCapitalization,
        textAlign: textAlign,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          contentPadding: contentPadding ?? EdgeInsets.zero,
          disabledBorder:
              disabledBorder ?? AppConstants.textFieldOutlinedBorder,
          enabledBorder: enabledBorder ?? AppConstants.textFieldOutlinedBorder,
          focusedBorder: focusedBorder ?? AppConstants.textFieldOutlinedBorder,
          focusedErrorBorder:
              focusedErrorBorder ?? AppConstants.textFieldOutlinedBorder,
          errorBorder: errorBorder ?? AppConstants.textFieldOutlinedBorder,
          hintText: hintTextKey == null ? '' : context.tr(hintTextKey!),
          hintStyle: hintStyle ??
              AppTextStyles.textStyle16Medium.copyWith(
                color:
                    context.isDarkModeActive ? Colors.grey[400] : Colors.grey,
              ),
          labelStyle: AppTextStyles.textStyle16Medium,
          filled: true,
          fillColor: context.isDarkModeActive ? Colors.black38 : Colors.white,
          border: border ?? AppConstants.textFieldOutlinedBorder,
        ),
      ),
    );
  }
}
