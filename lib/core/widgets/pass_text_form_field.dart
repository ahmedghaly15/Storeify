import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';

class PassTextFormField extends StatelessWidget {
  const PassTextFormField({
    super.key,
    this.controller,
    this.focusNode,
    this.validate,
    this.obscureText = true,
    this.suffixOnPressed,
    this.onSubmit,
    this.autofillHints = const <String>[AutofillHints.password],
    this.hintTextKey,
    this.keyboardType = TextInputType.visiblePassword,
    this.nextFocusNode,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode, nextFocusNode;
  final String? Function(String?)? validate;
  final bool obscureText;
  final VoidCallback? suffixOnPressed;
  final void Function(String)? onSubmit;
  final List<String>? autofillHints;
  final String? hintTextKey;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      autofillHints: autofillHints,
      validate: validate ??
          (String? value) =>
              AuthValidator.validatePasswordField(context, value: value),
      focusNode: focusNode,
      onSubmit: onSubmit,
      controller: controller,
      keyboardType: keyboardType,
      hintTextKey: hintTextKey,
      obscureText: obscureText,
      suffixIcon: IconButton(
        onPressed: suffixOnPressed,
        icon: Icon(
          obscureText
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: AppColors.primaryColor,
        ),
      ),
      onEditingComplete: nextFocusNode != null
          ? () => context.requestFocus(nextFocusNode!)
          : null,
    );
  }
}
