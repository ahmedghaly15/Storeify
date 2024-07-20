import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/auth/presentation/widgets/login/login_button_bloc_consumer.dart';
import 'package:store_ify/features/auth/presentation/widgets/login/login_form.dart';
import 'package:store_ify/features/auth/presentation/widgets/sign_up_text_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsetsDirectional.only(start: 9.w),
                  child: Text(
                    context.translate(LangKeys.signInToContinue),
                    style: AppTextStyles.textStyle24Medium,
                  ),
                ),
                MySizedBox.height5,
                Container(
                  margin: EdgeInsetsDirectional.only(start: 9.w),
                  child: Text(
                    context.translate(LangKeys.welcome),
                    style: AppTextStyles.textStyle16Medium,
                  ),
                ),
                MySizedBox.height22,
                const LoginForm(),
                MySizedBox.height32,
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.w),
                  child: const LoginButtonBlocConsumer(),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                      start: 24.w, end: 24.w, top: 12.h),
                  child: Row(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
