import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/text_form_validator.dart';
import 'package:store_ify/core/widgets/email_text_form_field.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/pass_text_form_field.dart';
import 'package:store_ify/core/widgets/username_text_form_field.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_state.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

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
          const TextFieldLabel(labelKey: LocaleKeys.email),
          EmailTextFormField(
            controller: registerCubit.emailController,
            nextFocusNode: registerCubit.usernameFocusNode,
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LocaleKeys.username),
          UsernameTextFormField(
            controller: registerCubit.usernameController,
            usernameFocusNode: registerCubit.usernameFocusNode,
            nextFocusNode: registerCubit.passwordFocusNode,
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LocaleKeys.password),
          BlocSelector<RegisterCubit, RegisterState, bool>(
            selector: (state) => state.isPassObscure,
            builder: (context, isPassObscure) => PassTextFormField(
              controller: registerCubit.passwordController,
              focusNode: registerCubit.passwordFocusNode,
              nextFocusNode: registerCubit.confirmPasswordFocusNode,
              obscureText: isPassObscure,
              suffixOnPressed: () => registerCubit.togglePassVisibility(),
            ),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LocaleKeys.confirmPassword),
          BlocSelector<RegisterCubit, RegisterState, bool>(
            selector: (state) => state.isConfirmPassObscure,
            builder: (context, isConfirmPassObscure) => PassTextFormField(
              obscureText: isConfirmPassObscure,
              suffixOnPressed: () =>
                  registerCubit.toggleConfirmPassVisibility(),
              onSubmit: (_) => registerCubit.register(),
              validate: (value) =>
                  TextFormValidator.validateConfirmPasswordField(
                context,
                value: value,
                password: registerCubit.passwordController.text,
                confirmPassword: registerCubit.confirmController.text,
              ),
              controller: registerCubit.confirmController,
              focusNode: registerCubit.confirmPasswordFocusNode,
            ),
          ),
        ],
      ),
    );
  }
}
