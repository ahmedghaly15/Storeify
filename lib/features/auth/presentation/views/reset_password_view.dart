import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:store_ify/features/auth/presentation/widgets/reset_password/reset_password_form.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: AppConstants.authHorizontalPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Reset Password",
              style: AppTextStyles.textStyle24Medium,
            ),
            SizedBox(height: 13.h),
            Text(
              "Enter your new password, make sure\nthat it should at least 8 characters\nstarted by _ ",
              style:
                  AppTextStyles.textStyle16Regular.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 23.h),
            ResetPasswordForm(email: email),
          ],
        ),
      ),
    );
  }
}
