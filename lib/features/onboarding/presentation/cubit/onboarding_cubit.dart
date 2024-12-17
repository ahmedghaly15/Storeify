import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/helpers/shared_pref_helper.dart';
import 'package:store_ify/core/helpers/cache_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.initial()) {
    pageController = PageController(initialPage: 0);
  }

  late final PageController pageController;

  void onPageChanged(int index) {
    emit(state.copyWith(
      status: OnboardingStateStatus.onPageChanged,
      isLastPage:
          index == AppConstants.onboardingPages.length - 1 ? true : false,
    ));
  }

  void navigateAmongPages({required VoidCallback onSkip}) {
    if (state.isLastPage) {
      skipOnboarding(onSkip: onSkip);
    }
    pageController.nextPage(
      duration: AppConstants.onboardingAnimationDuration,
      curve: AppConstants.onboardingCurve,
    );
  }

  void skipOnboarding({required VoidCallback onSkip}) async {
    await SharedPrefHelper.setData(CacheKeys.onboarding, true);
    onSkip();
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
