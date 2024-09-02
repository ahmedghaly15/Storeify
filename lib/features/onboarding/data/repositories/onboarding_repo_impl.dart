import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/features/onboarding/data/models/navigate_among_pages_params.dart';
import 'package:store_ify/features/onboarding/data/models/onboarding_attributes.dart';
import 'package:store_ify/features/onboarding/data/repositories/onboarding_repo.dart';

class OnboardingRepoImpl implements OnboardingRepo {
  @override
  List<OnboardingAttributes> onboardingPages() => const <OnboardingAttributes>[
        OnboardingAttributes(
          image: AppAssets.imagesOnBoarding1,
          titleKey: LangKeys.onboardingTitle1,
          subTitleKey: LangKeys.onboardingSubtitle1,
        ),
        OnboardingAttributes(
          image: AppAssets.imagesOnBoarding2,
          titleKey: LangKeys.onboardingTitle2,
          subTitleKey: LangKeys.onboardingSubtitle2,
        ),
        OnboardingAttributes(
          image: AppAssets.imagesOnBoarding3,
          titleKey: LangKeys.onboardingTitle3,
          subTitleKey: LangKeys.onboardingSubtitle3,
        ),
      ];

  @override
  void navigateAmongPages(NavigateAmongPagesParams params) {
    if (params.isLastBoarding!) skipToLogin(params.context);

    params.pageController.nextPage(
      duration: const Duration(milliseconds: 475),
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }

  @override
  void skipToLogin(BuildContext context) {
    SharedPrefHelper.setData(SharedPrefKeys.onboarding, true);
    context.replaceRoute(const LoginRoute());
  }
}
