import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/widgets/custom_adaptive_switch.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_cubit.dart';
import 'package:store_ify/features/favorites/presentation/cubits/favorites/general_state.dart';

class DarkModeSwitchBlocBuilder extends StatelessWidget {
  const DarkModeSwitchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralCubit, GeneralState>(
      buildWhen: (previous, current) => previous.theme != current.theme,
      builder: (context, state) => CustomAdaptiveSwitch(
        value: context.isDarkModeActive ? true : false,
        onChanged: (_) => context.read<GeneralCubit>().toggleTheme(),
      ),
    );
  }
}
