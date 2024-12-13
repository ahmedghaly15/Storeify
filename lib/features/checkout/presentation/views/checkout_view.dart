import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_next_bloc_consumer_button.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_form.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_process_progress_dots.dart';

@RoutePage()
class CheckoutView extends StatelessWidget implements AutoRouteWrapper {
  const CheckoutView({super.key, required this.amount});

  final double amount;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CheckoutCubit>(
      create: (_) => getIt.get<CheckoutCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleKey: LocaleKeys.checkout),
            const SliverToBoxAdapter(
              child: CheckoutProcessProgressDots(),
            ),
            const SliverToBoxAdapter(
              child: CheckoutForm(),
            ),
            SliverToBoxAdapter(
              child: FadeInDown(
                from: 50.h,
                child: CheckoutNextBlocConsumerButton(
                  amount: amount,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
