import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/functions/circular_indicator_or_text_widget.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:store_ify/features/profile/presentation/cubits/update_profile/update_profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/update_profile/update_profile_state.dart';

class ConfirmUpdateProfileBlocConsumer extends StatelessWidget {
  const ConfirmUpdateProfileBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
      listenWhen: (_, current) => _listenWhen(current),
      listener: (context, state) async => await _listener(state, context),
      buildWhen: (_, current) => _buildWhen(current),
      builder: (context, state) => MainButton(
        width: double.infinity,
        margin: EdgeInsetsDirectional.only(
          start: 24.w,
          end: 24.w,
          top: 24.h,
        ),
        onPressed: () =>
            context.read<UpdateProfileCubit>().validateFormAndUpdateProfile(),
        child: circularIndicatorOrTextWidget(
          isLoading:
              state.status == UpdateProfileStateStatus.updateProfileLoading,
          context: context,
          textKey: LangKeys.confirm,
        ),
      ),
    );
  }

  Future<void> _listener(
    UpdateProfileState<dynamic> state,
    BuildContext context,
  ) async {
    switch (state.status) {
      case UpdateProfileStateStatus.updateProfileSuccess:
        currentUser = state.updatedUser!;
        await AuthLocalDatasource.cacheUser(state.updatedUser!);
        CustomToast.showToast(
          context: context,
          messageKey: LangKeys.profileUpdatedSuccessfully,
          state: CustomToastState.success,
        );
      case UpdateProfileStateStatus.updateProfileError:
        CustomToast.showToast(
          context: context,
          messageKey: state.error!,
          state: CustomToastState.error,
        );
      default:
        break;
    }
  }

  bool _buildWhen(UpdateProfileState<dynamic> current) {
    return current.status == UpdateProfileStateStatus.updateProfileError ||
        current.status == UpdateProfileStateStatus.updateProfileSuccess ||
        current.status == UpdateProfileStateStatus.updateProfileLoading;
  }

  bool _listenWhen(UpdateProfileState<dynamic> current) {
    return current.status == UpdateProfileStateStatus.updateProfileError ||
        current.status == UpdateProfileStateStatus.updateProfileSuccess;
  }
}
