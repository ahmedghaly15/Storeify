import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store_ify/core/helpers/text_form_validator.dart';
import 'package:store_ify/core/widgets/pass_text_form_field.dart';
import 'package:store_ify/features/profile/presentation/cubits/change_pass/change_pass_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/change_pass/change_pass_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final changePassCubit = context.read<ChangePassCubit>();
    return Form(
      key: changePassCubit.formKey,
      child: Column(
        spacing: 10.h,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocSelector<ChangePassCubit, ChangePassState, bool>(
            selector: (state) => state.oldPasswordObscured,
            builder: (context, oldPasswordObscured) => PassTextFormField(
              controller: changePassCubit.passController,
              hintTextKey: LocaleKeys.oldPassword,
              obscureText: oldPasswordObscured,
              suffixOnPressed: () =>
                  changePassCubit.toggleOldPasswordVisibility(),
            ),
          ),
          BlocSelector<ChangePassCubit, ChangePassState, bool>(
            selector: (state) => state.newPasswordObscured,
            builder: (context, newPasswordObscured) => PassTextFormField(
              controller: changePassCubit.newPassController,
              hintTextKey: LocaleKeys.newPassword,
              obscureText: newPasswordObscured,
              suffixOnPressed: () => changePassCubit.toggleNewPassVisibility(),
              autofillHints: const [AutofillHints.newPassword],
            ),
          ),
          BlocSelector<ChangePassCubit, ChangePassState, bool>(
            selector: (state) => state.confirmNewPassObscured,
            builder: (context, confirmNewPassObscured) => PassTextFormField(
              controller: changePassCubit.confirmPassController,
              hintTextKey: LocaleKeys.confirmNewPassword,
              obscureText: confirmNewPassObscured,
              suffixOnPressed: () =>
                  changePassCubit.toggleConfirmPassVisibility(),
              autofillHints: const [AutofillHints.newPassword],
              validate: (value) =>
                  TextFormValidator.validateConfirmPasswordField(
                context,
                value: value,
                password: changePassCubit.newPassController.text,
                confirmPassword: changePassCubit.confirmPassController.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
