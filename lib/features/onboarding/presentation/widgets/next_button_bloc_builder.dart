import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/router/app_router.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class NextButtonBlocBuilder extends StatelessWidget {
  const NextButtonBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OnboardingCubit, OnboardingState, bool>(
      selector: (state) => state.isLastPage,
      builder: (context, isLastPage) => MainButton(
        margin: EdgeInsets.symmetric(horizontal: 61.w),
        onPressed: () => context.read<OnboardingCubit>().navigateAmongPages(
              onSkip: () => context.replaceRoute(const LoginRoute()),
            ),
        textKey: isLastPage ? LocaleKeys.getStarted : LocaleKeys.next,
      ),
    );
  }
}
