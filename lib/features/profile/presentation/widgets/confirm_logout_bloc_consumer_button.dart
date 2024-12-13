import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';

class ConfirmLogoutBlocConsumerButton extends StatelessWidget {
  const ConfirmLogoutBlocConsumerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) => MainButton(
        margin: EdgeInsets.zero,
        onPressed: () => context.read<ProfileCubit>().logout(),
        child: circularIndicatorOrTextWidget(
          isLoading: state.status == ProfileStateStatus.logoutLoading,
          context: context,
          textKey: LocaleKeys.confirm,
        ),
      ),
    );
  }

  bool _buildWhen(ProfileStateStatus status) {
    return status == ProfileStateStatus.logoutError ||
        status == ProfileStateStatus.logoutSuccess ||
        status == ProfileStateStatus.logoutLoading;
  }

  void _listener(ProfileState state, BuildContext context) {
    switch (state.status) {
      case ProfileStateStatus.logoutError:
        context.showToast(state.error!);
      case ProfileStateStatus.logoutSuccess:
        context.router.replaceAll([const LoginRoute()]);
      default:
        break;
    }
  }

  bool _listenWhen(ProfileStateStatus status) {
    return status == ProfileStateStatus.logoutError ||
        status == ProfileStateStatus.logoutSuccess;
  }
}
