import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    this.emailController,
    this.emailFocusNode,
    this.nextFocusNode,
  });

  final TextEditingController? emailController;
  final FocusNode? emailFocusNode, nextFocusNode;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validate: (String? value) =>
          AuthValidator.validateEmailField(context, value: value),
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      hintTextKey: LangKeys.examplegmailcom,
      autofillHints: const <String>[AutofillHints.email],
      focusNode: emailFocusNode,
      onEditingComplete: nextFocusNode != null
          ? () => context.requestFocus(nextFocusNode!)
          : null,
    );
  }
}
