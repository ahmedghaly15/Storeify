import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/widgets/custom_adaptive_switch.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';

class LanguageSwitchBlocConsumer extends StatelessWidget {
  const LanguageSwitchBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (_, current) =>
          current.status == ProfileStateStatus.changeLocaleLocally,
      listener: (context, state) => _listener(state, context),
      buildWhen: (previous, current) => previous.langCode != current.langCode,
      builder: (context, state) => CustomAdaptiveSwitch(
        value: state.langCode == AppStrings.englishLangCode ? false : true,
        onChanged: (_) => _toggleLang(context),
      ),
    );
  }

  void _toggleLang(BuildContext context) {
    if (context.locale == const Locale(AppStrings.englishLangCode)) {
      context.setLocale(const Locale(AppStrings.arabicLangCode));
    } else {
      context.setLocale(const Locale(AppStrings.englishLangCode));
    }
    context.read<ProfileCubit>().toggleLocale(context.locale.languageCode);
  }

  void _listener(ProfileState state, BuildContext context) {
    switch (state.status) {
      case ProfileStateStatus.changeLocaleLocally:
        context.read<ProfileCubit>().changeApiLang(state.langCode);
        context.maybePop();
        break;
      case ProfileStateStatus.changeApiLangError:
        CustomToast.showToast(
          context: context,
          messageKey: state.error ?? '',
          state: CustomToastState.error,
        );
        break;

      default:
        break;
    }
  }
}
