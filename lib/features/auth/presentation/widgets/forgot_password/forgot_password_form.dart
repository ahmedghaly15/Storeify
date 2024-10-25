import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgotPasswordCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TextFieldLabel(labelKey: LangKeys.email),
          CustomTextField(
            validate: (String? value) =>
                AuthValidator.validateEmailField(context, value: value),
            controller: context.read<ForgotPasswordCubit>().emailController,
            keyboardType: TextInputType.emailAddress,
            hintTextKey: LangKeys.examplegmailcom,
            autofillHints: const [AutofillHints.email],
          ),
        ],
      ),
    );
  }
}
