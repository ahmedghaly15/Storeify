import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/generated/locale_keys.g.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/core/di/dependency_injection.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/widgets/card_details_text.dart';
import 'package:store_ify/features/payment/presentation/widgets/pay_bloc_consumer_button.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_form_bloc_selector.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_progress_circles.dart';
import 'package:store_ify/features/payment/presentation/widgets/save_card_details_check_box.dart';

@RoutePage()
class PaymentView extends StatelessWidget implements AutoRouteWrapper {
  const PaymentView({super.key, required this.amount});

  final double amount;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentCubit>(
      create: (_) => getIt.get<PaymentCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleKey: LocaleKeys.paymentWithCard),
            const SliverToBoxAdapter(child: PaymentProgressCircles()),
            const SliverToBoxAdapter(child: CardDetailsText()),
            const SliverToBoxAdapter(child: PaymentFormBlocSelector()),
            const SliverToBoxAdapter(child: SaveCardDetailsCheckbox()),
            SliverToBoxAdapter(
              child: PayBlocConsumerButton(amount: amount),
            ),
          ],
        ),
      ),
    );
  }
}
