import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/email_text_form_field.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/pass_text_form_field.dart';
import 'package:store_ify/core/widgets/username_text_form_field.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_state.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterCubit>();
    return Form(
      key: registerCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TextFieldLabel(labelKey: LangKeys.email),
          EmailTextFormField(
            emailController: registerCubit.emailController,
            emailFocusNode: registerCubit.emailFocusNode,
            nextFocusNode: registerCubit.usernameFocusNode,
            validate: (String? value) =>
                AuthValidator.validateEmailField(context, value: value),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.username),
          UsernameTextFormField(
            controller: registerCubit.usernameController,
            usernameFocusNode: registerCubit.usernameFocusNode,
            nextFocusNode: registerCubit.passwordFocusNode,
            validate: (String? value) =>
                AuthValidator.validateNameField(context, value: value),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.password),
          BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (_, current) => current is TogglePassVisibility,
            builder: (context, state) => PassTextFormField(
              controller: registerCubit.passwordController,
              hintTextKey: LangKeys.passwordHint,
              focusNode: registerCubit.passwordFocusNode,
              nextFocusNode: registerCubit.confirmPasswordFocusNode,
              obscureText: registerCubit.isPassObscured,
              suffixOnPressed: () => registerCubit.togglePassVisibility(),
            ),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.confirmPassword),
          BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (_, current) => current is ToggleConfirmPassVisibility,
            builder: (context, state) => PassTextFormField(
              obscureText: registerCubit.isConfirmPassObscured,
              suffixOnPressed: () =>
                  registerCubit.toggleConfirmPassVisibility(),
              onSubmit: (_) => registerCubit.register(),
              validate: (value) => AuthValidator.validateConfirmPasswordField(
                context,
                value: value,
                password: registerCubit.passwordController.text,
                confirmPassword: registerCubit.confirmController.text,
              ),
              controller: registerCubit.confirmController,
              keyboardType: TextInputType.visiblePassword,
              hintTextKey: LangKeys.passwordHint,
              autofillHints: const <String>[AutofillHints.newPassword],
              focusNode: registerCubit.confirmPasswordFocusNode,
            ),
          ),
        ],
      ),
    );
  }
}
