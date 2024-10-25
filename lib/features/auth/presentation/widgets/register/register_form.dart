import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
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
          CustomTextField(
            validate: (String? value) =>
                AuthValidator.validateEmailField(context, value: value),
            controller: registerCubit.emailController,
            keyboardType: TextInputType.emailAddress,
            hintTextKey: LangKeys.examplegmailcom,
            autofillHints: const <String>[AutofillHints.email],
            focusNode: registerCubit.emailFocusNode,
            onEditingComplete: () =>
                context.requestFocus(registerCubit.usernameFocusNode),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.username),
          CustomTextField(
            validate: (String? value) =>
                AuthValidator.validateNameField(context, value: value),
            controller: registerCubit.usernameController,
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
            hintTextKey: LangKeys.enterYourUsername,
            autofillHints: const <String>[AutofillHints.name],
            focusNode: registerCubit.usernameFocusNode,
            onEditingComplete: () =>
                context.requestFocus(registerCubit.passwordFocusNode),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.password),
          BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (_, current) => current is InvertPasswordVisibility,
            builder: (context, state) => CustomTextField(
              obscureText: registerCubit.isPasswordVisible,
              suffixIcon: IconButton(
                onPressed: () => registerCubit.invertPasswordVisibility(),
                icon: Icon(
                  registerCubit.isPasswordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              validate: (value) =>
                  AuthValidator.validatePasswordField(context, value: value),
              controller: registerCubit.passwordController,
              keyboardType: TextInputType.visiblePassword,
              hintTextKey: LangKeys.passwordHint,
              autofillHints: const <String>[AutofillHints.password],
              focusNode: registerCubit.passwordFocusNode,
              onEditingComplete: () =>
                  context.requestFocus(registerCubit.confirmPasswordFocusNode),
            ),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.confirmPassword),
          BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (_, current) => current is InvertPasswordVisibility,
            builder: (context, state) => CustomTextField(
              obscureText: registerCubit.isConfirmPassVisible,
              suffixIcon: IconButton(
                onPressed: () =>
                    registerCubit.invertConfirmPasswordVisibility(),
                icon: Icon(
                  registerCubit.isConfirmPassVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
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
              autofillHints: const <String>[AutofillHints.password],
              focusNode: registerCubit.confirmPasswordFocusNode,
            ),
          ),
        ],
      ),
    );
  }
}
