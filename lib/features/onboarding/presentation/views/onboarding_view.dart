import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:store_ify/core/helpers/extensions.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:store_ify/features/onboarding/presentation/widgets/page_view_item.dart';

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
                onPressed: () =>
                    context.read<OnboardingCubit>().skipToLogin(context),
                child: Text(
                  context.translate(LangKeys.skip),
                ),
              ),
            ],
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: ExpandablePageView.builder(
                scrollDirection: Axis.horizontal,
                animateFirstPage: true,
                padEnds: false,
                animationDuration: AppConstants.onboardingAnimationDuration,
                animationCurve: AppConstants.onboardingCurve,
                controller: context.read<OnboardingCubit>().pageController,
                onPageChanged: (index) =>
                    context.read<OnboardingCubit>().onChangePageIndex(index),
                itemCount:
                    context.read<OnboardingCubit>().onboardingPages.length,
                itemBuilder: (_, index) => PageViewItem(
                  pageInfo:
                      context.read<OnboardingCubit>().onboardingPages[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}