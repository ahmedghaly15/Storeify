import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';
import 'package:store_ify/features/auth/presentation/widgets/login/login_form.dart';
import 'package:store_ify/features/auth/presentation/widgets/or_sign_in_with_text.dart';
import 'package:store_ify/features/auth/presentation/widgets/sign_up_text_button.dart';
import 'package:store_ify/features/auth/presentation/widgets/sign_with_social.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppConstants.authHorizontalPadding,
              sliver: SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Text(
                      "Sign in to Continue",
                      style: AppTextStyles.textStyle24Medium,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Welcome",
                      style: AppTextStyles.textStyle16Medium,
                    ),
                    SizedBox(height: 22.h),
                    const LoginForm(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                          onPressed: () => context.navigateTo(
                            routeName: Routes.forgetPasswordRoute,
                          ),
                          child: Text(
                            "Forgot password?",
                            style: AppTextStyles.textStyle16Regular
                                .copyWith(color: AppColors.greyColor),
                          ),
                        ),
                        const SignUpTextButton(),
                      ],
                    ),
                    const OrSignInWithText(),
                    SizedBox(height: 24.h),
                    const SignWithSocial(),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
