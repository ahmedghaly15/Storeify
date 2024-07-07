import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/auth/presentation/widgets/login/login_form.dart';
import 'package:store_ify/features/auth/presentation/widgets/sign_up_text_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: AppConstants.horizontalPadding,
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    context.translate(LangKeys.signInToContinue),
                    style: AppTextStyles.textStyle24Medium,
                  ),
                  MySizedBox.height5,
                  Text(
                    context.translate(LangKeys.welcome),
                    style: AppTextStyles.textStyle16Medium,
                  ),
                  MySizedBox.height22,
                  const LoginForm(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          context.translate(LangKeys.forgotPassword),
                          style: AppTextStyles.textStyle16Regular
                              .copyWith(color: AppColors.greyColor),
                        ),
                      ),
                      const SignUpTextButton(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
