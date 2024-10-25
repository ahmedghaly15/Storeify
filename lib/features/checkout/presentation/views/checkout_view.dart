import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/checkout/presentation/cubits/checkout/checkout_cubit.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_form.dart';
import 'package:store_ify/features/checkout/presentation/widgets/checkout_process_progress_dots.dart';

@RoutePage()
class CheckoutView extends StatelessWidget implements AutoRouteWrapper {
  const CheckoutView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CheckoutCubit>(
      create: (_) => getIt.get<CheckoutCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(titleKey: LangKeys.checkout),
            SliverToBoxAdapter(
              child: CheckoutProcessProgressDots(),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: CheckoutForm(),
            ),
          ],
        ),
      ),
    );
  }
}
