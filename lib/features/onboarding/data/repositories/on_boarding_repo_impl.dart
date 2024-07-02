import 'package:flutter/material.dart';
import 'package:store_ify/core/router/routes.dart';
import 'package:store_ify/core/helpers/cache_helper.dart';
import 'package:store_ify/core/utils/app_assets.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/features/onboarding/data/entities/navigate_between_pages_params.dart';
import 'package:store_ify/features/onboarding/data/models/on_boarding_model.dart';
import 'package:store_ify/features/onboarding/data/repositories/on_boarding_repo.dart';
import 'package:store_ify/dependency_injection.dart';

class OnBoardingRepoImpl implements OnBoardingRepo {
  @override
  List<OnBoardingModel> onBoardingPages() {
    return const <OnBoardingModel>[
      OnBoardingModel(
        image: AppAssets.imagesOnBoarding1,
        title: 'Welcome to Store-ify',
        subTitle:
            'Explore a world of endless possibilities. Store-ify is your one-stop destination for a diverse range of stores and products.',
      ),
      OnBoardingModel(
        image: AppAssets.imagesOnBoarding2,
        title: 'Discover & Shop',
        subTitle:
            'Browse through a variety of stores and products. Find the latest trends, exclusive deals, and more. Your next great find is just a tap away',
      ),
      OnBoardingModel(
        image: AppAssets.imagesOnBoarding3,
        title: 'Easy of Delivery',
        subTitle:
            'Enjoy a seamless shopping experience. Shop from multiple stores in one place, use our search options to find what you need, and discover a new way to shop.',
      ),
    ];
  }

  @override
  void navigateBetweenPages({
    required NavigateBetweenPagesParams params,
  }) {
    if (params.isLastBoarding) skipToLogin(context: params.context);

    params.pageController.nextPage(
      duration: const Duration(seconds: 1),
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }

  @override
  void skipToLogin({required BuildContext context}) {
    getIt
        .get<CacheHelper>()
        .saveData(key: AppStrings.cachedOnboarding, value: true)
        .then(
      (value) {
        if (value) {
          context.navigateAndReplace(newRoute: Routes.loginViewRoute);
        }
      },
    );
  }
}
