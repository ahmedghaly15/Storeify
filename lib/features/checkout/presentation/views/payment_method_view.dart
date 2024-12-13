import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/checkout/presentation/cubits/payment_method/payment_method_cubit.dart';
import 'package:store_ify/features/checkout/presentation/widgets/how_do_u_want_to_pay_question.dart';
import 'package:store_ify/features/checkout/presentation/widgets/payment_method_next_bloc_consumer_button.dart';
import 'package:store_ify/features/checkout/presentation/widgets/payment_method_process_progress.dart';
import 'package:store_ify/features/checkout/presentation/widgets/payment_methods.dart';

@RoutePage()
class PaymentMethodView extends StatelessWidget implements AutoRouteWrapper {
  const PaymentMethodView({super.key, required this.amount});

  final double amount;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentMethodCubit>(
      create: (_) => getIt.get<PaymentMethodCubit>(),
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
              child: PaymentMethodProcessProgress(),
            ),
            const SliverToBoxAdapter(
              child: HowDoUWantToPayQuestion(),
            ),
            const SliverToBoxAdapter(
              child: PaymentMethods(),
            ),
            SliverToBoxAdapter(
              child: PaymentMethodNextBlocConsumerButton(
                amount: amount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
