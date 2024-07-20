import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_state.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (_, current) => current is Error,
      listener: (context, state) {
        state.whenOrNull(
          error: (error) => CustomToast.showToast(
            context: context,
            messageKey: error,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return MainButton(
          child: state is Loading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(
                  context.translate(LangKeys.login),
                  style: AppTextStyles.mainButtonTextStyle,
                ),
          onPressed: () => context.read<LoginCubit>().login(context),
        );
      },
    );
  }
}
