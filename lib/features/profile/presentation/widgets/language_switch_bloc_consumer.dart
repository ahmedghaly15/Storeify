import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/utils/functions/toggle_lang.dart';
import 'package:store_ify/core/widgets/custom_adaptive_switch.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:store_ify/features/profile/presentation/cubits/profile_state.dart';

class LanguageSwitchBlocConsumer extends StatelessWidget {
  const LanguageSwitchBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listenWhen: (_, current) =>
          current.status == ProfileStateStatus.changeLocaleLocally ||
          current.status == ProfileStateStatus.changeApiLangError,
      listener: (context, state) => _listener(state, context),
      buildWhen: (previous, current) => previous.langCode != current.langCode,
      builder: (context, state) => CustomAdaptiveSwitch(
        value: state.langCode == AppStrings.englishLangCode ? false : true,
        onChanged: (_) => toggleLang(context),
      ),
    );
  }

  void _listener(ProfileState state, BuildContext context) async {
    switch (state.status) {
      case ProfileStateStatus.changeLocaleLocally:
        context.read<ProfileCubit>().changeApiLang(state.langCode);
        await Hive.deleteFromDisk();
        await context.read<GeneralCubit>().fetchHomeData();
        break;
      case ProfileStateStatus.changeApiLangError:
        context.showToast(state.error!);
        break;
      default:
        break;
    }
  }
}
