import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/email_text_form_field.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/pass_text_form_field.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Form(
      key: loginCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TextFieldLabel(labelKey: LangKeys.email),
          EmailTextFormField(
            emailController: loginCubit.emailController,
            emailFocusNode: loginCubit.emailFocusNode,
            nextFocusNode: loginCubit.passwordFocusNode,
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.password),
          BlocBuilder<LoginCubit, LoginState>(
            buildWhen: (_, current) => current is InvertPasswordVisibility,
            builder: (context, _) => PassTextFormField(
              hintTextKey: LangKeys.passwordHint,
              controller: loginCubit.passwordController,
              focusNode: loginCubit.passwordFocusNode,
              obscureText: loginCubit.isPasswordVisible,
              suffixOnPressed: () => loginCubit.invertPasswordVisibility(),
              onSubmit: (_) => loginCubit.login(),
            ),
          ),
        ],
      ),
    );
  }
}
