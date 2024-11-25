import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/onboarding/data/models/navigate_among_pages_params.dart';
import 'package:store_ify/features/onboarding/data/models/onboarding_attributes.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class OnboardingRepo {
  List<OnboardingAttributes> onboardingPages() => const <OnboardingAttributes>[
        OnboardingAttributes(
          image: AppAssets.imagesOnBoarding1,
          titleKey: LocaleKeys.onboardingTitle1,
          subTitleKey: LocaleKeys.onboardingSubtitle1,
        ),
        OnboardingAttributes(
          image: AppAssets.imagesOnBoarding2,
          titleKey: LocaleKeys.onboardingTitle2,
          subTitleKey: LocaleKeys.onboardingSubtitle2,
        ),
        OnboardingAttributes(
          image: AppAssets.imagesOnBoarding3,
          titleKey: LocaleKeys.onboardingTitle3,
          subTitleKey: LocaleKeys.onboardingSubtitle3,
        ),
      ];

  void navigateAmongPages(NavigateAmongPagesParams params) {
    if (params.isLastBoarding) skipToLogin(params.context);

    params.pageController.nextPage(
      duration: AppConstants.onboardingAnimationDuration,
      curve: AppConstants.onboardingCurve,
    );
  }

  void skipToLogin(BuildContext context) {
    SharedPrefHelper.setData(SharedPrefKeys.onboarding, true);
    context.replaceRoute(const LoginRoute());
  }
}
