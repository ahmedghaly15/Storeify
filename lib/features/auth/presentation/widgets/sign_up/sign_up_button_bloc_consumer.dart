import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_state.dart';

class SignUpButtonBlocConsumer extends StatelessWidget {
  const SignUpButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listenWhen: (_, current) => current is Error,
      listener: (context, state) {
        state.whenOrNull(
          error: (error) => CustomToast.showToast(
            context: context,
            message: error,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is Loading || current is Error || current is Success,
      builder: (context, state) => MainButton(
        child: state is Loading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Text(
                context.translate(LangKeys.signUp),
                style: AppTextStyles.mainButtonTextStyle,
              ),
        onPressed: () => context.read<RegisterCubit>().register(context),
      ),
    );
  }
}
