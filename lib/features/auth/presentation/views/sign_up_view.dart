import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:store_ify/features/auth/presentation/widgets/sign_up/sign_up_view_body.dart';

@RoutePage()
class SignUpView extends StatelessWidget implements AutoRouteWrapper {
  const SignUpView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) => getIt.get<RegisterCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpViewBody(),
    );
  }
}
