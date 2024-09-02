import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/onboarding/data/models/navigate_among_pages_params.dart';
import 'package:store_ify/features/onboarding/data/models/onboarding_attributes.dart';
import 'package:store_ify/features/onboarding/data/repositories/onboarding_repo.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final OnboardingRepo _onboardingRepo;

  OnboardingCubit(this._onboardingRepo)
      : super(const OnboardingState.initial()) {
    pageController = PageController(initialPage: 0);
  }

  bool isLastOnboarding = false;
  late final PageController pageController;

  List<OnboardingAttributes> get onboardingPages =>
      _onboardingRepo.onboardingPages();

  void onChangePageIndex(int index) {
    if (index == onboardingPages.length - 1) {
      isLastOnboarding = true;
    } else {
      isLastOnboarding = false;
    }
    emit(OnboardingState.pageViewIndexChanged(index));
  }

  void navigateBetweenPages(BuildContext context) {
    _onboardingRepo.navigateAmongPages(
      NavigateAmongPagesParams(
        context: context,
        pageController: pageController,
        isLastBoarding: isLastOnboarding,
      ),
    );
  }

  void skipToLogin(BuildContext context) {
    _onboardingRepo.skipToLogin(context);
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
