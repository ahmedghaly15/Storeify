import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/text_form_validator.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class UsernameTextFormField extends StatelessWidget {
  const UsernameTextFormField({
    super.key,
    this.controller,
    this.usernameFocusNode,
    this.nextFocusNode,
    this.onChanged,
  });

  final TextEditingController? controller;
  final FocusNode? usernameFocusNode, nextFocusNode;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validate: (String? value) =>
          TextFormValidator.validateNameField(context, value: value),
      controller: controller,
      keyboardType: TextInputType.name,
      hintTextKey: LocaleKeys.enterYourUsername,
      autofillHints: const <String>[AutofillHints.name],
      focusNode: usernameFocusNode,
      onEditingComplete: nextFocusNode != null
          ? () => context.requestFocus(nextFocusNode!)
          : null,
      onChanged: onChanged,
    );
  }
}
