import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/auth/presentation/widgets/register/register_button_bloc_consumer.dart';
import 'package:store_ify/features/auth/presentation/widgets/register/register_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

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
                const RegisterForm(),
                MySizedBox.height24,
                const RegisterButtonBlocConsumer(),
                Container(
                  margin: EdgeInsetsDirectional.only(end: 16.w),
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () => context.maybePop(),
                    child: Text(context.translate(LangKeys.login)),
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