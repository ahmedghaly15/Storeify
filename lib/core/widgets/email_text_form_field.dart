import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/text_form_validator.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    this.controller,
    this.emailFocusNode,
    this.nextFocusNode,
    this.onChanged,
  });

  final TextEditingController? controller;
  final FocusNode? emailFocusNode, nextFocusNode;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validate: (String? value) =>
          TextFormValidator.validateEmailField(context, value: value),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      hintTextKey: LocaleKeys.emailFieldHint,
      autofillHints: const <String>[AutofillHints.email],
      focusNode: emailFocusNode,
      onEditingComplete: nextFocusNode != null
          ? () => context.requestFocus(nextFocusNode!)
          : null,
      onChanged: onChanged,
    );
  }
}
