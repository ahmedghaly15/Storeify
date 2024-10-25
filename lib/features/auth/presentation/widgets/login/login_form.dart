import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/auth_validator.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
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
          CustomTextField(
            validate: (String? value) =>
                AuthValidator.validateEmailField(context, value: value),
            onEditingComplete: () =>
                context.requestFocus(loginCubit.passwordFocusNode),
            controller: loginCubit.emailController,
            focusNode: loginCubit.emailFocusNode,
            keyboardType: TextInputType.emailAddress,
            hintTextKey: LangKeys.examplegmailcom,
            autofillHints: const [AutofillHints.email],
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
