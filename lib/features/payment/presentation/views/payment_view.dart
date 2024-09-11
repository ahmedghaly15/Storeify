import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/custom_sliver_app_bar.dart';
import 'package:store_ify/dependency_injection.dart';
import 'package:store_ify/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:store_ify/features/payment/presentation/widgets/card_details_text.dart';
import 'package:store_ify/features/payment/presentation/widgets/pay_bloc_consumer_button.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_form_bloc_builder.dart';
import 'package:store_ify/features/payment/presentation/widgets/payment_progress_circles.dart';
import 'package:store_ify/features/payment/presentation/widgets/save_card_details_check_box.dart';

@RoutePage()
class PaymentView extends StatelessWidget implements AutoRouteWrapper {
  const PaymentView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PaymentCubit>(
      create: (_) => getIt.get<PaymentCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(titleKey: LangKeys.paymentWithCard),
            SliverToBoxAdapter(child: PaymentProgressCircles()),
            SliverToBoxAdapter(child: CardDetailsText()),
            SliverToBoxAdapter(child: PaymentFormBlocBuilder()),
            SliverToBoxAdapter(child: SaveCardDetailsCheckbox()),
            SliverToBoxAdapter(child: PayBlocConsumerButton()),
          ],
        ),
      ),
    );
  }
}
