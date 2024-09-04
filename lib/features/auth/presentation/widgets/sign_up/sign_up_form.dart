import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/validator.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_state.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TextFieldLabel(labelKey: LangKeys.email),
          CustomTextField(
            validate: (String? value) =>
                Validator.validateEmailField(value: value),
            controller: context.read<RegisterCubit>().emailController,
            keyboardType: TextInputType.emailAddress,
            hintTextKey: LangKeys.examplegmailcom,
            autofillHints: const <String>[AutofillHints.email],
            focusNode: context.read<RegisterCubit>().emailFocusNode,
            onEditingComplete: () => context
                .requestFocus(context.read<RegisterCubit>().usernameFocusNode),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.username),
          CustomTextField(
            validate: (String? value) =>
                Validator.validateNameField(value: value),
            controller: context.read<RegisterCubit>().usernameController,
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
            hintTextKey: LangKeys.enterYourUsername,
            autofillHints: const <String>[AutofillHints.name],
            focusNode: context.read<RegisterCubit>().usernameFocusNode,
            onEditingComplete: () => context
                .requestFocus(context.read<RegisterCubit>().passwordFocusNode),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.password),
          BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (_, current) => current is InvertPasswordVisibility,
            builder: (context, state) => CustomTextField(
              obscureText: context.read<RegisterCubit>().isPasswordVisible,
              suffixIcon: IconButton(
                onPressed: () =>
                    context.read<RegisterCubit>().invertPasswordVisibility(),
                icon: Icon(
                  context.read<RegisterCubit>().isPasswordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              validate: (value) =>
                  Validator.validatePasswordField(value: value),
              controller: context.read<RegisterCubit>().passwordController,
              keyboardType: TextInputType.visiblePassword,
              hintTextKey: LangKeys.passwordHint,
              autofillHints: const <String>[AutofillHints.password],
              focusNode: context.read<RegisterCubit>().passwordFocusNode,
              onEditingComplete: () => context.requestFocus(
                  context.read<RegisterCubit>().confirmPasswordFocusNode),
            ),
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.confirmPassword),
          BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (_, current) => current is InvertPasswordVisibility,
            builder: (context, state) => CustomTextField(
              obscureText: context.read<RegisterCubit>().isConfirmPassVisible,
              suffixIcon: IconButton(
                onPressed: () => context
                    .read<RegisterCubit>()
                    .invertConfirmPasswordVisibility(),
                icon: Icon(
                  context.read<RegisterCubit>().isConfirmPassVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              onSubmit: (_) => context.read<RegisterCubit>().register(context),
              validate: (value) => Validator.validateConfirmPasswordField(
                value: value,
                password: context.read<RegisterCubit>().passwordController.text,
                confirmPassword:
                    context.read<RegisterCubit>().confirmController.text,
              ),
              controller: context.read<RegisterCubit>().confirmController,
              keyboardType: TextInputType.visiblePassword,
              hintTextKey: LangKeys.passwordHint,
              autofillHints: const <String>[AutofillHints.password],
              focusNode: context.read<RegisterCubit>().confirmPasswordFocusNode,
            ),
          ),
        ],
      ),
    );
  }
}
