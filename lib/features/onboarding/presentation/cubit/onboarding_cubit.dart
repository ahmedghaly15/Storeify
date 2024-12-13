import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/shared_pref_keys.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/onboarding/data/models/onboarding_attributes.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.initial()) {
    pageController = PageController(initialPage: 0);
  }

  late final PageController pageController;

  void onChangePageIndex(int index) {
    if (index == onboardingPages.length - 1) {
      emit(state.copyWith(
        status: OnboardingStateStatus.lastPageView,
        isLastPage: true,
      ));
    } else {
      emit(state.copyWith(
        status: OnboardingStateStatus.lastPageView,
        isLastPage: false,
      ));
    }
  }

  List<OnboardingAttributes> onboardingPages = const <OnboardingAttributes>[
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

  void navigateAmongPages({required VoidCallback onSkip}) {
    if (state.isLastPage) {
      skipOnboarding(onSkip: onSkip);
    }
    pageController.nextPage(
      duration: AppConstants.onboardingAnimationDuration,
      curve: AppConstants.onboardingCurve,
    );
  }

  void skipOnboarding({required VoidCallback onSkip}) {
    SharedPrefHelper.setData(SharedPrefKeys.onboarding, true);
    onSkip();
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
