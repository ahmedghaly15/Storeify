import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/core/widgets/pass_text_form_field.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_state.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final resetPassCubit = context.read<ResetPasswordCubit>();
    return Form(
      key: context.read<ResetPasswordCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TextFieldLabel(labelKey: LocaleKeys.password),
          BlocSelector<ResetPasswordCubit, ResetPasswordState, bool>(
            selector: (state) => state.isPassObscure,
            builder: (context, isPassObscure) => PassTextFormField(
              controller: resetPassCubit.passController,
              nextFocusNode: resetPassCubit.confirmPassFocusNode,
              obscureText: isPassObscure,
              suffixOnPressed: () => resetPassCubit.togglePassVisibility(),
            ),
          ),
          const TextFieldLabel(labelKey: LocaleKeys.confirmPassword),
          BlocSelector<ResetPasswordCubit, ResetPasswordState, bool>(
            selector: (state) => state.isConfirmPassObscure,
            builder: (context, isConfirmPassObscure) => PassTextFormField(
              obscureText: isConfirmPassObscure,
              controller: resetPassCubit.confirmPassController,
              focusNode: resetPassCubit.confirmPassFocusNode,
              suffixOnPressed: () =>
                  resetPassCubit.toggleConfirmPassVisibility(),
              validate: (value) => AuthValidator.validateConfirmPasswordField(
                context,
                value: value,
                password: resetPassCubit.passController.text,
                confirmPassword: resetPassCubit.confirmPassController.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
