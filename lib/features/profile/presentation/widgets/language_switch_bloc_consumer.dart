import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_cubit.dart';
import 'package:store_ify/core/locale/logic/cubit/locale_state.dart';
import 'package:store_ify/core/widgets/custom_adaptive_switch.dart';

class LanguageSwitchBlocConsumer extends StatelessWidget {
  const LanguageSwitchBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    final localeCubit = context.read<LocaleCubit>();
    return BlocConsumer<LocaleCubit, LocaleState>(
      listenWhen: (_, current) =>
          current.status == LocaleStateStatus.changeLocaleLocally,
      listener: (context, state) {
        switch (state.status) {
          case LocaleStateStatus.changeLocaleLocally:
            context.maybePop();
            break;
        }
      },
      buildWhen: (previous, current) => previous.locale != current.locale,
      builder: (context, state) => CustomAdaptiveSwitch(
        value: localeCubit.isArabic ? true : false,
        onChanged: (_) => localeCubit.toggleLocale(),
      ),
    );
  }
}
