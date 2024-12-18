import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';

class ConfirmDeleteAccountBlocConsumer extends StatelessWidget {
  const ConfirmDeleteAccountBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (_, current) => _listenWhen(current.status),
      listener: (context, state) => _listener(state, context),
      buildWhen: (_, current) => _buildWhen(current.status),
      builder: (context, state) => MainButton(
        onPressed: () => context.read<ProfileCubit>().deleteAccount(),
        child: circularIndicatorOrTextWidget(
          isLoading: state.status == ProfileStateStatus.deleteAccountLoading,
          context: context,
          textKey: LocaleKeys.confirm,
        ),
      ),
    );
  }

  void _listener(ProfileState state, BuildContext context) {
    switch (state.status) {
      case ProfileStateStatus.deleteAccountError:
        context.showToast(state.error!);
        break;
      case ProfileStateStatus.deleteAccountSuccess:
        context.router.pushAndPopUntil(
          const AuthRoute(),
          predicate: (route) => route.settings.name == LayoutRoute.name,
        );
        break;
      default:
        break;
    }
  }

  bool _buildWhen(ProfileStateStatus status) {
    return status == ProfileStateStatus.deleteAccountError ||
        status == ProfileStateStatus.deleteAccountSuccess ||
        status == ProfileStateStatus.deleteAccountLoading;
  }

  bool _listenWhen(ProfileStateStatus status) {
    return status == ProfileStateStatus.deleteAccountError ||
        status == ProfileStateStatus.deleteAccountSuccess;
  }
}
