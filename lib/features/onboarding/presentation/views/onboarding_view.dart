import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:store_ify/features/onboarding/presentation/widgets/page_view_item.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

@RoutePage()
class OnboardingView extends StatelessWidget implements AutoRouteWrapper {
  const OnboardingView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<OnboardingCubit>(
      create: (_) => getIt.get<OnboardingCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            hasLeading: false,
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.primaryColor,
                  textStyle: AppTextStyles.textStyle16Regular,
                ),
                onPressed: () => context.read<OnboardingCubit>().skipOnboarding(
                      onSkip: () => context.replaceRoute(const LoginRoute()),
                    ),
                child: Text(
                  context.tr(LocaleKeys.skip),
                ),
              ),
            ],
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: ExpandablePageView.builder(
                controller: context.read<OnboardingCubit>().pageController,
                scrollDirection: Axis.horizontal,
                animateFirstPage: true,
                padEnds: false,
                animationDuration: AppConstants.onboardingAnimationDuration,
                animationCurve: AppConstants.onboardingCurve,
                onPageChanged: (index) =>
                    context.read<OnboardingCubit>().onPageChanged(index),
                itemCount: AppConstants.onboardingPages.length,
                itemBuilder: (_, index) => PageViewItem(
                  pageInfo: AppConstants.onboardingPages[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
