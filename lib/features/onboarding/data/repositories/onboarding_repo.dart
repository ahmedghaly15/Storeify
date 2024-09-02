import 'package:flutter/material.dart';
import 'package:store_ify/features/onboarding/data/models/navigate_among_pages_params.dart';
import 'package:store_ify/features/onboarding/data/models/onboarding_attributes.dart';

abstract class OnboardingRepo {
  List<OnboardingAttributes> onboardingPages();

  void navigateAmongPages(NavigateAmongPagesParams params);

  void skipToLogin(BuildContext context);
}
