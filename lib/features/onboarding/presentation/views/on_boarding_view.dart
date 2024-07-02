import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/features/onboarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:store_ify/features/onboarding/presentation/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _onBoardingAppBar(context),
      body: const OnBoardingViewBody(),
    );
  }

  AppBar _onBoardingAppBar(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        TextButton(
          onPressed: () {
            BlocProvider.of<OnBoardingCubit>(context)
                .skipToLogin(context: context);
          },
          child: Text(
            "Skip",
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 24.sp,
            ),
          ),
        )
      ],
    );
  }
}
