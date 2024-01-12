import 'package:flutter/material.dart';
import 'package:store_ify/features/onboarding/data/entities/navigate_between_pages_params.dart';
import 'package:store_ify/features/onboarding/data/models/on_boarding_model.dart';

abstract class OnBoardingRepo {
  List<OnBoardingModel> onBoardingPages();

  void navigateBetweenPages({
    required NavigateBetweenPagesParams params,
  });

  void skipToLogin({required BuildContext context});
}
