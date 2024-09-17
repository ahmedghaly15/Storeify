import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/themes/theming_cubit.dart';
import 'package:store_ify/core/widgets/custom_adaptive_switch.dart';

class DarkModeSwitchBlocBuilder extends StatelessWidget {
  const DarkModeSwitchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemingCubit, ThemeData>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) => CustomAdaptiveSwitch(
        value: context.isDarkModeActive ? true : false,
        onChanged: (_) => context.read<ThemingCubit>().toggleTheme(),
      ),
    );
  }
}
