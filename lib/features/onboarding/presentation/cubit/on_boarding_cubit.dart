import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/features/onboarding/data/entities/navigate_between_pages_params.dart';
import 'package:store_ify/features/onboarding/data/models/on_boarding_model.dart';
import 'package:store_ify/features/onboarding/data/repositories/on_boarding_repo.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  final OnBoardingRepo onBoardingRepo;

  OnBoardingCubit({required this.onBoardingRepo})
      : super(const OnBoardingInitial());

  bool isLastBoarding = false;

  List<OnBoardingModel> onBoardingPages() {
    return onBoardingRepo.onBoardingPages();
  }

  void onChangePageIndex(int index) {
    if (index == onBoardingPages().length - 1) {
      isLastBoarding = true;
    } else {
      isLastBoarding = false;
    }
    emit(PageViewIndexChanged(index: index));
  }

  void navigateBetweenPages({
    required BuildContext context,
    required PageController pageController,
  }) {
    onBoardingRepo.navigateBetweenPages(
      params: NavigateBetweenPagesParams(
        context: context,
        pageController: pageController,
        isLastBoarding: isLastBoarding,
      ),
    );

    emit(const NavigateBetweenPages());
  }

  void skipToLogin({required BuildContext context}) {
    onBoardingRepo.skipToLogin(context: context);

    emit(const SkipToLogin());
  }
}
