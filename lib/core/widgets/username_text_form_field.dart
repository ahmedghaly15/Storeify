import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class UsernameTextFormField extends StatelessWidget {
  const UsernameTextFormField({
    super.key,
    this.controller,
    this.usernameFocusNode,
    this.nextFocusNode,
    this.validate,
  });

  final TextEditingController? controller;
  final FocusNode? usernameFocusNode, nextFocusNode;
  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validate: validate,
      controller: controller,
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.words,
      hintTextKey: LocaleKeys.enterYourUsername,
      autofillHints: const <String>[AutofillHints.name],
      focusNode: usernameFocusNode,
      onEditingComplete: nextFocusNode != null
          ? () => context.requestFocus(nextFocusNode!)
          : null,
    );
  }
}