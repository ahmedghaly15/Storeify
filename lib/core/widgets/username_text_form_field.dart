import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';

class UsernameTextFormField extends StatelessWidget {
  const UsernameTextFormField({
    super.key,
    this.usernameController,
    this.usernameFocusNode,
    this.nextFocusNode,
  });

  final TextEditingController? usernameController;
  final FocusNode? usernameFocusNode, nextFocusNode;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validate: (String? value) =>
          AuthValidator.validateNameField(context, value: value),
      controller: usernameController,
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.words,
      hintTextKey: LangKeys.enterYourUsername,
      autofillHints: const <String>[AutofillHints.name],
      focusNode: usernameFocusNode,
      onEditingComplete: nextFocusNode != null
          ? () => context.requestFocus(nextFocusNode!)
          : null,
    );
  }
}
