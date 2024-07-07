import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/helpers/auth_helper.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TextFieldLabel(labelKey: LangKeys.email),
          CustomTextField(
            validate: (String? value) => AuthHelper.validateEmailField(value),
            onEditingComplete: () => context
                .requestFocus(context.read<LoginCubit>().passwordFocusNode),
            controller: context.read<LoginCubit>().emailController,
            focusNode: context.read<LoginCubit>().emailFocusNode,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Example@gmail.com',
            autofillHints: const [AutofillHints.email],
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.password),
          CustomTextField(
            autofillHints: const <String>[AutofillHints.password],
            validate: (String? value) =>
                AuthHelper.validatePasswordField(value),
            focusNode: context.read<LoginCubit>().passwordFocusNode,
            // onSubmit: (_) {},
            controller: context.read<LoginCubit>().passwordController,
            keyboardType: TextInputType.visiblePassword,
            hintText: '*********',
            // obscureText: BlocProvider.of<LoginCubit>(context).isPassword,
            suffixIcon: IconButton(
              onPressed: () {
                // BlocProvider.of<LoginCubit>(context).changePasswordVisibility();
              },
              icon: const Icon(
                // BlocProvider.of<LoginCubit>(context).isPassword
                // ? Icons.visibility_outlined
                // : Icons.visibility_off_outlined,
                Icons.visibility_off_outlined,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          MySizedBox.height32,
          MainButton(
            textKey: LangKeys.login,
            // onPressed: () => _login(context),
            onPressed: () {
              // context.read<LoginCubit>().login();
              context.read<LocaleCubit>().toggleLocale();
            },
          ),
        ],
      ),
    );
  }
}
