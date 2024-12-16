import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/widgets/custom_adaptive_switch.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';

class DarkModeSwitchBlocSelector extends StatelessWidget {
  const DarkModeSwitchBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GeneralCubit, GeneralState, ThemeData>(
      selector: (state) => state.theme!,
      builder: (context, state) => CustomAdaptiveSwitch(
        value: context.isDarkModeActive,
        onChanged: (_) => context.read<GeneralCubit>().toggleTheme(),
      ),
    );
  }
}
