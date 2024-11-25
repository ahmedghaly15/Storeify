import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';

class ConfirmDeleteAccountBlocConsumer extends StatelessWidget {
  const ConfirmDeleteAccountBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (_, current) =>
          current is DeleteAccountError || current is DeleteAccountSuccess,
      listener: (context, state) {
        state.whenOrNull(
          deleteAccountError: (error) => CustomToast.showToast(
            context: context,
            messageKey: error,
            state: CustomToastState.error,
          ),
          deleteAccountSuccess: () => context.router.pushAndPopUntil(
            const AuthRoute(),
            predicate: (route) => route.settings.name == BottomNavBarRoute.name,
          ),
        );
      },
      builder: (context, state) => MainButton(
        onPressed: () => context.read<ProfileCubit>().deleteAccount(),
        width: double.infinity,
        child: circularIndicatorOrTextWidget(
          isLoading: state is DeleteAccountLoading,
          context: context,
          textKey: LocaleKeys.confirm,
        ),
      ),
    );
  }
}
