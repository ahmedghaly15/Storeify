import 'package:flutter/material.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
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
  });

  final TextInputType keyboardType;
  final String? hintText;
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
  final InputBorder? focusedBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        contentPadding: contentPadding,
        enabledBorder: enabledBorder ?? _buildTextFieldOutlinedBorder(),
        focusedBorder: focusedBorder ?? _buildTextFieldOutlinedBorder(),
        focusedErrorBorder: _buildTextFieldOutlinedBorder(),
        errorBorder: _buildTextFieldOutlinedBorder(),
        hintText: hintText ?? '',
        hintStyle: AppTextStyles.textStyle16Medium.copyWith(color: Colors.grey),
        labelStyle: AppTextStyles.textStyle16Medium,
        filled: true,
        fillColor: Colors.white,
        border: _buildTextFieldOutlinedBorder(),
      ),
    );
  }

  OutlineInputBorder _buildTextFieldOutlinedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.fontPrimaryColor, width: 1.w),
    );
  }
}
