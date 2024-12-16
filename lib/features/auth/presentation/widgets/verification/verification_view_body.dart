import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/features/auth/presentation/widgets/verification/validate_otp_button_bloc_consumer.dart';
import 'package:store_ify/features/auth/presentation/widgets/verification/validate_otp_pin_put.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    context.tr(LocaleKeys.OtpVerification),
                    style: AppTextStyles.textStyle24Medium,
                    textAlign: TextAlign.center,
                  ),
                  MySizedBox.height8,
                  FittedBox(
                    child: Text(
                      "${context.tr(LocaleKeys.WeSentCodeTo)} $email",
                      style: AppTextStyles.textStyle16Regular
                          .copyWith(color: AppColors.subTitleColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MySizedBox.height19,
                  Image.asset(
                    AppAssets.imagesOtpVerification,
                    fit: BoxFit.fill,
                  ),
                  MySizedBox.height19,
                  Text(
                    context.tr(LocaleKeys.otpCode),
                    style: AppTextStyles.textStyle16Medium,
                    textAlign: TextAlign.center,
                  ),
                  MySizedBox.height13,
                  const ValidateOtpPinput(),
                  MySizedBox.height19,
                  ValidateOtpButtonBlocConsumer(email: email),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
