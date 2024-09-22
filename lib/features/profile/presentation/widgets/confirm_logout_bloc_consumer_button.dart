import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';

class ConfirmLogoutBlocConsumerButton extends StatelessWidget {
  const ConfirmLogoutBlocConsumerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (_, current) =>
          current is LogoutError || current is LogoutSuccess,
      listener: (context, state) {
        state.whenOrNull(
          logoutSuccess: () {
            context.router.replaceAll([const LoginRoute()]);
          },
          logoutError: (errorKey) => CustomToast.showToast(
            context: context,
            messageKey: errorKey,
            state: CustomToastState.error,
          ),
        );
      },
      buildWhen: (_, current) =>
          current is LogoutLoading ||
          current is LogoutSuccess ||
          current is LogoutError,
      builder: (context, state) => MainButton(
        onPressed: () => context.read<ProfileCubit>().logout(),
        width: double.infinity,
        child: circularIndicatorOrTextWidget(
          isLoading: state is LogoutLoading,
          context: context,
          textKey: LangKeys.confirm,
        ),
      ),
    );
  }
}
