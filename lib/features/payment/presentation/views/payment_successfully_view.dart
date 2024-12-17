import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/main_button.dart';

@RoutePage()
class PaymentSuccessfullyView extends StatelessWidget {
  const PaymentSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElasticIn(
        child: Column(
          spacing: 24.w,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppAssets.imagesPaymentSuccessfully),
            Text(
              context.tr(LocaleKeys.paymentSuccessfully),
              style: AppTextStyles.textStyle24Medium,
              textAlign: TextAlign.center,
            ),
            MainButton(
              margin: EdgeInsets.symmetric(
                horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
              ),
              onPressed: () => context.replaceRoute(const LayoutRoute()),
              textKey: LocaleKeys.backToHome,
            ),
          ],
        ),
      ),
    );
  }
}
