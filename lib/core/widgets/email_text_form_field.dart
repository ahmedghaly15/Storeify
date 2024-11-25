import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    this.emailController,
    this.emailFocusNode,
    this.nextFocusNode,
    this.validate,
  });

  final TextEditingController? emailController;
  final FocusNode? emailFocusNode, nextFocusNode;
  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validate: validate,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      hintTextKey: LocaleKeys.emailFieldHint,
      autofillHints: const <String>[AutofillHints.email],
      focusNode: emailFocusNode,
      onEditingComplete: nextFocusNode != null
          ? () => context.requestFocus(nextFocusNode!)
          : null,
    );
  }
}