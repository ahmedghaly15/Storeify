import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/auth/presentation/cubits/validate_otp/validate_otp_cubit.dart';
import 'package:store_ify/features/auth/presentation/widgets/verification/verification_view_body.dart';

@RoutePage()
class VerificationView extends StatelessWidget implements AutoRouteWrapper {
  const VerificationView({super.key, required this.email});

  final String email;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ValidateOtpCubit>(
      create: (_) => getIt.get<ValidateOtpCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerificationViewBody(email: email),
    );
  }
}
