import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:store_ify/features/onboarding/presentation/widgets/custom_indicator.dart';
import 'package:store_ify/features/onboarding/presentation/widgets/page_view_item.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        OnBoardingCubit cubit = BlocProvider.of<OnBoardingCubit>(context);

        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: screenHeight * 0.1),
              SizedBox(
                height: screenHeight * 0.5,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: cubit.onBoardingPages().length,
                  itemBuilder: (context, index) => PageViewItem(
                    pageInfo: cubit.onBoardingPages()[index],
                  ),
                  onPageChanged: (int index) {
                    cubit.onChangePageIndex(index);
                  },
                ),
              ),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.center,
                child: CustomIndicator(pageController: pageController),
              ),
              SizedBox(height: 40.h),
              MainButton(
                onPressed: () => _navigateAmongOnBoarding(context),
                text: cubit.isLastBoarding ? 'Get Started' : 'Next',
              ),
            ],
          ),
        );
      },
    );
  }

  void _navigateAmongOnBoarding(BuildContext context) {
    if (BlocProvider.of<OnBoardingCubit>(context).isLastBoarding) {
      BlocProvider.of<OnBoardingCubit>(context).skipToLogin(context: context);
    } else {
      BlocProvider.of<OnBoardingCubit>(context).navigateBetweenPages(
        context: context,
        pageController: pageController,
      );
    }
  }
}
