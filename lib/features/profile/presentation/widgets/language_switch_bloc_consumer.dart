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
    return BlocConsumer<LocaleCubit, LocaleState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        state.whenOrNull(
          changeLocale: (_) => context.maybePop(),
        );
      },
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) => CustomAdaptiveSwitch(
        value: context.read<LocaleCubit>().isArabic ? true : false,
        onChanged: (_) => context.read<LocaleCubit>().toggleLocale(),
      ),
    );
  }
}
