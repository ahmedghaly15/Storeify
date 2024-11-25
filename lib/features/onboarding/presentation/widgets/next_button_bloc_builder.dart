import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:store_ify/generated/locale_keys.g.dart';

class NextButtonBlocBuilder extends StatelessWidget {
  const NextButtonBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (_, current) => current is PageViewIndexChanged,
      builder: (context, state) => MainButton(
        margin: EdgeInsets.symmetric(horizontal: 80.w),
        onPressed: () =>
            context.read<OnboardingCubit>().navigateBetweenPages(context),
        textKey: context.read<OnboardingCubit>().isLastOnboarding
            ? LocaleKeys.getStarted
            : LocaleKeys.next,
      ),
    );
  }
}
