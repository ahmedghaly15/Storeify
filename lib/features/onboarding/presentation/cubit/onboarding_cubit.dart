import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/onboarding/data/models/navigate_among_pages_params.dart';
import 'package:store_ify/features/onboarding/data/models/onboarding_attributes.dart';
import 'package:store_ify/features/onboarding/data/repositories/onboarding_repo.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final OnboardingRepo _onboardingRepo;

  OnboardingCubit(this._onboardingRepo)
      : super(const OnboardingState.initial());

  bool isLastOnboarding = false;

  List<OnboardingAttributes> onboardingPages() =>
      _onboardingRepo.onboardingPages();

  void onChangePageIndex(int index) {
    if (index == onboardingPages().length - 1) {
      isLastOnboarding = true;
    } else {
      isLastOnboarding = false;
    }
    emit(OnboardingState.pageViewIndexChanged(index));
  }

  void navigateBetweenPages(NavigateAmongPagesParams params) {
    _onboardingRepo.navigateAmongPages(
      NavigateAmongPagesParams(
        context: params.context,
        pageController: params.pageController,
        isLastBoarding: isLastOnboarding,
      ),
    );
  }

  void skipToLogin(BuildContext context) {
    _onboardingRepo.skipToLogin(context);
  }
}
