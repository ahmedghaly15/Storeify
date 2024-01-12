import 'package:flutter/material.dart';
import 'package:store_ify/features/auth/presentation/widgets/forgot_password/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: ForgotPasswordViewBody(),
    );
  }
}
