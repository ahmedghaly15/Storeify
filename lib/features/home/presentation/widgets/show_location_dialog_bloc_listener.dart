import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/home/presentation/cubit/home_cubit.dart';
import 'package:store_ify/features/home/presentation/cubit/home_state.dart';
import 'package:store_ify/features/home/presentation/widgets/enable_location_permission_adaptive_dialog.dart';

class ShowLocationDialogBlocListener extends StatelessWidget {
  const ShowLocationDialogBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listenWhen: (_, current) => current is ShowLocationDialog,
      listener: (_, state) {
        state.whenOrNull(
          showLocationDialog: () {
            showAdaptiveDialog(
              context: context,
              barrierDismissible: true,
              barrierLabel: '',
              builder: (_) => const EnableLocationPermissionAdaptiveDialog(),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
