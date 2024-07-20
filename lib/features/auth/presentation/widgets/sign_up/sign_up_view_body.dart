import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/auth/presentation/widgets/sign_up/sign_up_button_bloc_consumer.dart';
import 'package:store_ify/features/auth/presentation/widgets/sign_up/sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 40.h, start: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.translate(LangKeys.signUp),
                    style: AppTextStyles.textStyle24Medium,
                  ),
                  MySizedBox.height5,
                  Text(
                    context.translate(LangKeys.createAccount),
                    style: AppTextStyles.textStyle16Medium,
                  ),
                  MySizedBox.height45,
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                const SignUpForm(),
                MySizedBox.height24,
                Container(
                  margin: EdgeInsetsDirectional.only(
                    start: 24.w,
                    end: 24.w,
                    bottom: 10.h,
                  ),
                  child: const SignUpButtonBlocConsumer(),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () => context.maybePop(),
                    child: Text(
                      context.translate(LangKeys.login),
                      style: AppTextStyles.textStyle16Regular.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
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
