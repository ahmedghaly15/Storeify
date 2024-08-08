import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/helpers/auth_helper.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/reset_password/reset_password_state.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
      builder: (context, state) {
        return Form(
          key: context.read<ResetPasswordCubit>().formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const TextFieldLabel(labelKey: LangKeys.password),
              CustomTextField(
                obscureText: true,
                suffixIcon: IconButton(
                  onPressed: () => context
                      .read<ResetPasswordCubit>()
                      .invertNewPassVisibility(),
                  icon: Icon(
                    context.read<ResetPasswordCubit>().newPassObscured
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: AppColors.primaryColor,
                  ),
                ),
                validate: (value) =>
                    AuthHelper.validatePasswordField(value: value),
                controller: context.read<ResetPasswordCubit>().passController,
                keyboardType: TextInputType.visiblePassword,
                hintTextKey: LangKeys.passwordHint,
                autofillHints: const <String>[AutofillHints.password],
                focusNode: context.read<ResetPasswordCubit>().passFocusNode,
                onEditingComplete: () => context.requestFocus(
                    context.read<ResetPasswordCubit>().confirmPassFocusNode),
              ),
              const TextFieldLabel(labelKey: LangKeys.confirmPassword),
              CustomTextField(
                obscureText:
                    context.read<ResetPasswordCubit>().confirmPassObscured,
                validate: (value) => AuthHelper.validateConfirmPasswordField(
                  value: value,
                  password:
                      context.read<ResetPasswordCubit>().passController.text,
                  confirmPassword: context
                      .read<ResetPasswordCubit>()
                      .confirmPassController
                      .text,
                ),
                suffixIcon: IconButton(
                  onPressed: () => context
                      .read<ResetPasswordCubit>()
                      .invertConfirmPassVisibility(),
                  icon: Icon(
                    context.read<ResetPasswordCubit>().confirmPassObscured
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: AppColors.primaryColor,
                  ),
                ),
                controller:
                    context.read<ResetPasswordCubit>().confirmPassController,
                keyboardType: TextInputType.visiblePassword,
                hintTextKey: LangKeys.passwordHint,
                autofillHints: const <String>[AutofillHints.password],
                focusNode:
                    context.read<ResetPasswordCubit>().confirmPassFocusNode,
              ),
            ],
          ),
        );
      },
    );
  }
}
