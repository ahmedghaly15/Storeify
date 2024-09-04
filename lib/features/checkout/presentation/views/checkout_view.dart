import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_form.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_process_progress_dots.dart';

@RoutePage()
class CheckoutView extends StatelessWidget implements AutoRouteWrapper {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleKey: LangKeys.checkout),
            const SliverToBoxAdapter(
              child: CheckoutProcessProgressDots(),
            ),
            const SliverToBoxAdapter(
              child: CheckoutForm(),
            ),
            SliverToBoxAdapter(
              child: MainButton(
                margin: EdgeInsets.symmetric(
                  horizontal: AppConstants.mainButtonHorizontalMarginVal.w,
                  vertical: 40.h,
                ),
                onPressed: () {},
                textKey: LangKeys.next,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CheckoutCubit>(
      create: (_) => getIt.get<CheckoutCubit>(),
      child: this,
    );
  }
}
