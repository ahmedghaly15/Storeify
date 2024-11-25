import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/pass_text_form_field.dart';
import 'package:store_ify/features/profile/presentation/cubits/change_pass/change_pass_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/change_pass/change_pass_state.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final changePassCubit = context.read<ChangePassCubit>();
    return Form(
      key: changePassCubit.formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<ChangePassCubit, ChangePassState>(
            buildWhen: (_, current) => current is ToggleOldPassVisibility,
            builder: (context, state) => PassTextFormField(
              controller: changePassCubit.passController,
              hintTextKey: LocaleKeys.oldPassword,
              obscureText: changePassCubit.oldPasswordObscured,
              suffixOnPressed: () =>
                  changePassCubit.toggleOldPasswordVisibility(),
            ),
          ),
          MySizedBox.height10,
          BlocBuilder<ChangePassCubit, ChangePassState>(
            buildWhen: (_, current) => current is ToggleNewPassVisibility,
            builder: (context, state) => PassTextFormField(
              controller: changePassCubit.newPassController,
              hintTextKey: LocaleKeys.newPassword,
              obscureText: changePassCubit.newPasswordObscured,
              suffixOnPressed: () => changePassCubit.toggleNewPassVisibility(),
              autofillHints: const [AutofillHints.newPassword],
            ),
          ),
          MySizedBox.height10,
          BlocBuilder<ChangePassCubit, ChangePassState>(
            buildWhen: (_, current) =>
                current is ToggleConfirmNewPassVisibility,
            builder: (context, state) => PassTextFormField(
              controller: changePassCubit.confirmPassController,
              hintTextKey: LocaleKeys.confirmNewPassword,
              obscureText: changePassCubit.confirmNewPassObscured,
              suffixOnPressed: () =>
                  changePassCubit.toggleConfirmPassVisibility(),
              autofillHints: const [AutofillHints.newPassword],
              validate: (value) => AuthValidator.validateConfirmPasswordField(
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
