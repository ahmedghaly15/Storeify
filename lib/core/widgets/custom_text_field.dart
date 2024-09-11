import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
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
  });

  final TextInputType keyboardType;
  final String? hintTextKey;
  final TextStyle? hintStyle;
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(horizontal: 24.w),
      child: TextFormField(
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
        cursorColor: Colors.black,
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
          hintText: hintTextKey == null ? '' : context.translate(hintTextKey!),
          hintStyle: hintStyle ??
              AppTextStyles.textStyle16Medium.copyWith(color: Colors.grey),
          labelStyle: AppTextStyles.textStyle16Medium,
          filled: true,
          fillColor: Colors.white,
          border: border ?? AppConstants.textFieldOutlinedBorder,
        ),
      ),
    );
  }
}
